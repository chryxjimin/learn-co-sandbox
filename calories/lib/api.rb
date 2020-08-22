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
  
      # binding.pry
      
    response["results"].each.with_index(1) do |recipe, id|
      
      url = URI("https://api.spoonacular.com/recipes/#{id}/information?includeNutrition=false&apiKey=284f148e79944cf4b76961fd5d79ceec")
    
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)

    response = http.request(request)
    recipe_information = JSON.parse(response.body)

      puts "#{recipe_information["title"]}"
      puts "#{recipe_information["sourceUrl"]}"
      
      #binding.pry
    end
   end
 end










