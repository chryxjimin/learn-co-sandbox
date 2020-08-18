class CLI
  
  def start 
     puts "Welcome to my calories app"
     puts "calorie_intake"
     input = gets.to_i
     API.get_recipes(input)
  end
  
end