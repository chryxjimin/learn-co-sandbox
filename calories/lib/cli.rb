class CLI
  
  def start 
     puts "Welcome to my calories app"
     puts "Please enter a desired calorie intake limit."
     maxCalories = gets.to_i
     API.get_recipes(maxCalories)
     store_recipes
     #get_link
  end
  
   def store_recipes
      Recipes.all.each.with_index(1) do |r, i|
      #binding.pry
          puts "#{i}. #{r.title}"
      end
   end
  
  
  # def get_link
  #     puts "Enter the recipe number if you want more information."
  #     #find a recipe 
      
  #     #check the recipe number
  #     #pull up the recipe link
  #     if Recipes.index == store_recipes.index
  #       binding.pry
  #     end
      
  #end
end