class CLI
  
  def start 
     puts "Welcome to my calories app"
     puts "Please enter a desired calorie intake limit."
     max_calories = gets("nutrition":["title": "Calories"]).to_i.strip
     API.get_recipes(max_calories)
  end
  
end