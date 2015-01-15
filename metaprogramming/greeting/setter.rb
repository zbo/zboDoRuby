class Setter
  def myValue=(value)
    @myValue=value
  end
  def myValue
    @myValue
  end
end

setter = Setter.new
setter.myValue = 'test'
puts setter.myValue