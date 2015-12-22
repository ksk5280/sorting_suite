require 'pry'

module SortingSuite
  class InsertionSort
    def sort(unsorted)
      return nil if unsorted.nil?
      return [] if unsorted.empty?

      sorted = [unsorted.shift]
      unsorted.each do |i|
        index = 0
        while index < sorted.length
          if i < sorted[index]
            sorted.insert(index, i)
            break
          elsif index == (sorted.length - 1)
            sorted << i
            break
          end
          index += 1
        end
      end
      sorted
    end
  end
end

if __FILE__ == $0
sorter = SortingSuite::InsertionSort.new
sorter.sort(["d", "b", "a", "c"])
end
