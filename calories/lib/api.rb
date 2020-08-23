require 'uri'
require 'net/http'
require 'openssl'
require 'pry'
require "json"

class API

   def self.get_recipes(maxCalories)
     url = URI("https://api.spoonacular.com/recipes/complexSearch?apiKey=284f148e79944cf4b76961fd5d79ceec&maxCalories=#{maxCalories}")
    
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)

    response = http.request(request)
    response = JSON.parse(response.body)
  
      #binding.pry
      
      response["results"].each do |recipe|
        title = recipe["title"]
        image = recipe["image"]
        calorie_amount = recipe["amount"]
        Recipes.new(title, calorie_amount, image)
    end
  end
 end
# end










