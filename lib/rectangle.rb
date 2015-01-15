# require "pry"

class Rectangle
  #the initialize method will run when I run Rectangle.new
  def initialize(length, width)
    #use an instance variable @length to save the local variable value passed in the argument
    @length = length
    @width = width
  end

  #Getter methods
  #instance method for accessing the length
  def length
    @length
  end

  #instance methods for accessing the width
  def width
    @width
  end

  #instance methods for defining area & accessing area
  def area
    @length * @width
  end

  #instance methods for defining perimeter & accessing perimeter
  def perimeter
    (@length * 2) + (@width * 2)
  end

  #instance methods for checking if the rectangle is square
  #we only use a question mark as part of the method name & for no other reason. the == will evaluate to true or false
  def square?
    @length == @width
  end

end

# binding.pry
# puts "---"

# my_rectangle = Rectangle.new(10, 20)

# my_rectangle.length
# my_rectangle.width

