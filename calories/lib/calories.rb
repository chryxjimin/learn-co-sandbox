require "calories/version"

# module Calories
#   class Error < StandardError; end
#   # Your code goes here...
# end

class Calories
  @@all = []
  
  def initialize
    @@all << self
  end
  
end
