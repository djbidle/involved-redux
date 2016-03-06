require 'json'

class DataController < ApplicationController
  
  helper_method :data, :sessions, :search_bills

  def data
    uri = URI.parse("https://api.iga.in.gov")
    test = JSON.parse(data_uri(uri))
    test["motd"]
  end
  
  def sessions
    uri = URI.parse("https://api.iga.in.gov/2016/bills/HB1015")
    body = JSON.parse(data_uri(uri))
    body
   
  end
  
  def search_bills
    uri = URI.parse("https://api.iga.in.gov/2016/bills")
    body = JSON.parse(data_uri(uri))
    items = body["items"]
    bills = []
    items.each do |item|  
      #bills.push(item["billName"])
      #bills.push(item["link"])
      bill = JSON.parse(data_uri(URI.parse("https://api.iga.in.gov" + item["link"])))
      bills.push(bill["title"])
    end
    bills
  end
  
  private
  
  def data_uri (uri)
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
