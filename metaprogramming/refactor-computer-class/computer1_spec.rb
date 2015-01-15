class DataSource1
  def get_mouse_info(id)
    "dell"
  end
  def get_mouse_price(id)
    "100"
  end
  def get_keyboard_info(id)
    "mac"
  end
end
class Computer1
  def initialize(computer_id,data_source)
    @id=computer_id
    @data_source=data_source
  end
  def mouse
    component :mouse
  end
  def keyboard
    component :keyboard
  end

  def component(name)
    info=@data_source.send "get_#{name}_info", @id
    price=@data_source.send "get_#{name}_price", @id
    result="#{name.to_s.capitalize}:#{info} ($#{price})"
    result
  end
end

describe Computer1 do
  it 'should workable computer1 class' do
    my_computer=Computer1.new(1,DataSource1.new)
    puts my_computer.mouse
  end
end