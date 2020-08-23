class Recipes
  @@all = []
  
  attr_accessor :title, :calorie_amount, :image
  
  def initialize(title, calorie_amount, image)
    @title = title
    @calorie_amount = calorie_amount
    @image = image
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end
