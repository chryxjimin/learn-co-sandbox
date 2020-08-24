class CLI
  
  def start 
     puts "Welcome to my calories app"
     puts "Please enter a desired calorie intake limit."
     maxCalories = gets.to_i
     API.get_recipes(maxCalories)
     store_recipes
     get_link
  end
  
   def store_recipes
      Recipe.all.each.with_index(1) do |r, i|
          puts "#{i}. #{r.title}"
      end
   end
  
  
  def get_link
      puts "Enter the recipe number if you want more information."
      index = gets.to_i
      if (!Recipe.all[index].nil?)
        puts Recipe.all[index - 1].sourceurl
     end
  end
end
