require 'pry'

class BubbleSort
  def sort(array)
    return nil if !array

    array.each
      previous = 0
      current = 1
      while current < array.length
        if array[previous] > array[current]
          array[previous], array[current] = array[current], array[previous]
        end
        previous += 1
        current += 1
      end
    end
    array
  end
end

if __FILE__ == $0
  sorter = BubbleSort.new
  sorter.sort(["d", "b", "a", "c"])
end
