class CLI
  
  def start 
     puts "Welcome to my calories app"
     puts "Please enter a desired calorie intake limit."
     input = gets.to_i.strip
     API.get_recipes(maxCalories)
  end
  
end