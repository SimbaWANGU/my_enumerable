require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end
list = MyList.new(1, 2, 3, 4, 5) # p is puts/prints

p(list.all? { |n| n < 3 })
p(list.any? { |n| n < 3 })
p(list.filter { |n| (n % 2).zero? })
