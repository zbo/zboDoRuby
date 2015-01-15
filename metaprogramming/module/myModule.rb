module MyModule
  class MyClass
    Xx='LICH';
  end
  Yy=::MyModule::MyClass::Xx+'KING'
end

puts MyModule::MyClass::Xx
puts '------------'
puts MyModule.constants
puts '------------'
puts Module.constants[0..1]
puts '------------'
puts MyModule::MyClass.constants
puts '------------'
puts MyModule::Yy
puts '------------'
puts MyModule::MyClass.ancestors