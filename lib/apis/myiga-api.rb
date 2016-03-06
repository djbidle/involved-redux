require "net/https"
require "uri"
def get_data2
  uri = URI.parse("https://api.iga.in.gov/const")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(uri.request_uri)
  request.add_field("Accept", "application/json")
  request.add_field("Authorization", "Token 057737f48783158a3fe72af0b3395935da3192cd")

  http.request(request)
  
end
