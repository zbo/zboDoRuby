#私有方法遵循一个简单的规则，就是不能显式调用self方法
class SuperBaseClass
  private
  def do_it
    'run do it'
  end
  public
  def do_it_error
    self.do_it
  end

end
class PrivateMethod < SuperBaseClass
  def pub_method
    do_it
  end
end

describe PrivateMethod do
  it 'should be able to call super class private method' do
    instance=PrivateMethod.new
    value=instance.pub_method
    expect(value).to eq('run do it')
    expect{instance.do_it_error}.to raise_error
  end
end