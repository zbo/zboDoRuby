class DynamicCall
  def my_method(input)
    input*2
  end
end

class MyConf
  attr_accessor :admin,:password
  define_method :my_method do |my_args|
    my_args*3
  end
end

describe DynamicCall do
  it 'should be able to call dynamic method' do
    result=DynamicCall.new.my_method 'hi'
    expect(result).to eq('hi'*2)
    result=DynamicCall.new.send(:my_method, 'hello')
    expect(result).to eq('hello'*2)
    expect(1.send('+',2)).to eq(3)
    expect(1.send(:+,2)).to eq(3)
  end
end

describe MyConf do
  it 'should be able to set properties dynamically' do
    confArray={'admin'=>'kum','password'=>'P@ssword01'}
    confArray.each do |k,v|
      MyConf.new.send("#{k}=",v)
    end
  end
  it 'should be able to define method dynamically' do
    expect(MyConf.new.my_method(3)).to eq(9)
    MyConf.send(:define_method,:my_method) do |my_arg|
      my_arg+1
    end
    expect(MyConf.new.my_method(3)).to eq(4)
  end
end
