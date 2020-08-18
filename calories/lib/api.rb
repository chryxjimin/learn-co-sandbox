
require 'net/http'
require 'open-uri'
require 'json'
require 'restclient'

class API 
   
   URL = ".json"
   
   def self.get_recipes(calories)
    response = RestClient::Request.execute(
   :method => :get,
   :url => "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/products/%7Bid%7D/nutritionWidget",
   :headers => {
	"x-rapidapi-host": "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
	"x-rapidapi-key": "24ffe50364msh82b342b5ced1400p13091ajsn8ec97e5992cc",
	"accept": "text/html",
	"useQueryString": true
}
)
binding.pry
   end
  
end
  API.get_recipes(2)