require 'uri'
require 'net/http'
require 'openssl'

class API
  
   #attr_accessor :

   url = URI("https://api.spoonacular.com/recipes/complexSearch?apiKey=284f148e79944cf4b76961fd5d79ceec&minCalories=300&maxCalories=350")

   def self.get_recipes(max_calories)

     http = Net::HTTP.new(url.host, url.port)
     http.use_ssl = true
     http.verify_mode = OpenSSL::SSL::VERIFY_NONE

     request = Net::HTTP::Get.new(url)

     response = http.request(request)
     puts response.read_body
   end

end


#API.get_recipes(2)
