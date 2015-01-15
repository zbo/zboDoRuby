class Greeting
  def initialize(text)
    @text=text
  end
  def welcome
    @text
  end
  def sayHello
    puts "this is out #{@text}"
  end
end

my_object=Greeting.new('hello')
puts my_object.class
puts my_object.class.instance_methods(false)
puts my_object.instance_variables
puts my_object.welcome
puts my_object.sayHello
puts '================'
puts my_object.methods
