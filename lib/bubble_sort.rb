require 'pry'

class BubbleSort
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sort
    previous, current = 0, 1
    while current <= array.length
      if array[previous] > array[current] # ~> ArgumentError: comparison of String with nil failed
        @array[previous], @array[current] = @array[current], @array[previous] # => ["b", "d"], ["a", "d"]

        array # => ["b", "d", "a"], ["b", "a", "d"]
      end
      previous += 1 # => 1, 2
      current += 1 # => 2, 3
      
    end
  end
end

if __FILE__ == $0
sorter = BubbleSort.new(["d", "b", "a"])
sorter.sort
end

# ~> ArgumentError
# ~> comparison of String with nil failed
# ~>
# ~> /Users/kimiko/Documents/Turing/1module/projects/sorting_suite/lib/bubble_sort.rb:13:in `>'
# ~> /Users/kimiko/Documents/Turing/1module/projects/sorting_suite/lib/bubble_sort.rb:13:in `sort'
# ~> /Users/kimiko/Documents/Turing/1module/projects/sorting_suite/lib/bubble_sort.rb:26:in `<main>'
