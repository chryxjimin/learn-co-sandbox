class Recipe
  @@all = []
  
  attr_accessor :title, :calorie_amount, :image, :sourceurl
  
  def initialize(title, calorie_amount, image, sourceurl)
    @title = title
    @calorie_amount = calorie_amount
    @image = image
    @sourceurl = sourceurl
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end
