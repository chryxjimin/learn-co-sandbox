require 'uri'
require 'net/http'
require 'openssl'
require "pry"
require "json"

class API
  
   #attr_accessor :

  

   def self.get_recipes(max_calories)
      url = URI("https://api.spoonacular.com/recipes/complexSearch?apiKey=284f148e79944cf4b76961fd5d79ceec&minCalories=300&maxCalories=350")

     http = Net::HTTP.new(url.host, url.port)
     http.use_ssl = true
     http.verify_mode = OpenSSL::SSL::VERIFY_NONE

     request = Net::HTTP::Get.new(url)

     response = http.request(request)
     response = JSON.parse(response.body)
     #binding.pry
     puts response.read_body
   end
   
   def calorie_count
     
   end

end


API.get_recipes(2)

#data.each{|x, y| puts y[0][:name]}