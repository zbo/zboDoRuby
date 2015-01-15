class ArrayRun

end

ary1=[1,'two',3.0]
#puts ary1
ary2=Array.new(2){ary1}
#puts ary2
arr = ['a', 'b', 'c', 'd', 'e', 'f']
#puts arr.fetch(3)
#puts arr.take(3)
arr.each_with_index do
  |a,i| print a+i.to_s+' '
  end