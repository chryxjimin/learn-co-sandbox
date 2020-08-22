class CLI
  
  def start 
     puts "Welcome to my calories app"
     puts "Please enter a desired calorie intake limit."
     maxCalories = gets.to_i 
     API.get_recipes(maxCalories)
  end
  
end