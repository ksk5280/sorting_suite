require 'pry'

class BubbleSort
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sort
    array.length.times do
      previous, current = 0, 1
      while current < array.length
        if array[previous] > array[current]
          @array[previous], @array[current] = @array[current], @array[previous]
        end
        previous += 1
        current += 1
      end
    end
    array
  end
end

if __FILE__ == $0
sorter = BubbleSort.new(["d", "b", "a", "c"])
sorter.sort
end
