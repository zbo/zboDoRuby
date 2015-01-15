module M
  def my_method
    'my_method_M()'
  end
end

module N
  def my_method
    'my_method_N()'
  end
end

class C
  include M
  include N
end

class D<C

end

D.ancestors.each { |an|print an.to_s+' > ' }
puts
puts D.new.my_method
