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
      
      response["results"].select.with_index(0) do |recipe, id|
      
      url = URI("https://api.spoonacular.com/recipes/#{id}/information?includeNutrition=true&apiKey=284f148e79944cf4b76961fd5d79ceec")
    
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Get.new(url)

      response = http.request(request)
      recipe_information = JSON.parse(response.body)
      
    # if response(maxCalories) <= (maxCalories)
      puts "#{recipe_information["title"]}"
      puts "#{recipe_information["sourceUrl"]}"
    end
  end
 end
# end










