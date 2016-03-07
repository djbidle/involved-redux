require 'json'

class DataController < ApplicationController
  
  helper_method :get_bill_details

  def data
    uri = URI.parse("https://api.iga.in.gov")
    test = JSON.parse(data_uri(uri))
  end
  
  def sessions
    uri = URI.parse("https://api.iga.in.gov/sessions")
    body = JSON.parse(data_uri(uri))
    items = body["items"]
    items.each do |item|
      Session.create(session_name: item["name"], session_link: item["link"]) 
    end   
  end 
  
  def bill_items
    uri = URI.parse("https://api.iga.in.gov/2016/bills")
    body = JSON.parse(data_uri(uri))
    bill_items = body["itemCount"].to_s
    items_uri = uri.to_s + "?per_page=" + bill_items + "&page=1"
    bills(items_uri)
  end   
  
  def bills(items_uri)
    uri = URI.parse(items_uri)
    body = JSON.parse(data_uri(uri))
    items = body["items"]
    items.each do |item|
      BillDatum.create(session: "2016", bill_name: item["billName"], origin_chamber_link: item["originChamber"]["link"], origin_chamber_name: item["originChamber"]["name"], bill_type: item["type"], bill_link: item["link"]) 
    end   
  end
  
  def get_bill_details
    uri = "https://api.iga.in.gov"
    links = BillDatum.pluck(:bill_link)
    links.each do |link|
      bill_data_uri = uri + link
      bill_details(bill_data_uri)
    end
    
  end   
  
  def bill_details(bill_data_uri)
    uri = URI.parse(bill_data_uri)
    body = JSON.parse(data_uri(uri))
    item = body
    author = body["authors"][0]
    BillDetail.create(bill_title: item["title"].to_s, bill_name: item["billName"].to_s, bill_number: item["number"].to_s, bill_description: item["description"].to_s, bill_status: item["status"].to_s, bill_stage: item["stage"].to_s, session: item["year"].to_s, origin_chamber_name: item["originChamber"].to_s, current_chamber_name: item["currentChamber"].to_s, bill_type: item["type"].to_s,  bill_link: item["link"].to_s, committee_status: item["committeeStatus"].to_s, bill_digest: item["latestVersion"]["digest"].to_s, bill_author_position_title: author["position_title"].to_s, bill_author_first_name: author["firstName"].to_s, bill_author_last_name: author["lastName"].to_s, bill_author_party: author["party"].to_s, bill_author_link: author["link"].to_s, bill_author_full_name: author["fullName"].to_s)
  end

  private
  
  def data_uri(uri)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(uri.request_uri)
    request.add_field("Accept", "application/json")
    request.add_field("Authorization", "Token 057737f48783158a3fe72af0b3395935da3192cd")

    response = http.request(request)
    
    return response.body
  end  

end
