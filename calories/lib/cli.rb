class CLI
  
  def start 
     puts "Welcome to my calories app"
     puts "Please enter a desired calorie intake limit."
     maxCalories = gets.to_i
     #binding.pry
     API.get_recipes(maxCalories)
     store_recipes
  end
  
  def store_recipes
    Calories.all.each.with_index(1) do |r, i|
      #binding.pry
       puts "#{r.title}"
    
    end
  end
end