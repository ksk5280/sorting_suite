require 'pry'

class InsertionSort
  def sort(unsorted)
    sorted = []
    if !unsorted
      nil
    elsif unsorted.length == 0
      sorted
    else
      sorted << unsorted.shift
      while unsorted.length > 0
        index = 0
        inserted = false
        while index < sorted.length
          if unsorted[0] < sorted[index]
            sorted.insert(index, unsorted.shift)
            inserted = true
            break
          end
          index += 1
        end
        if !inserted
          sorted << unsorted.shift
        end
      end
      sorted
    end
  end
end


if __FILE__ == $0
sorter = InsertionSort.new
sorter.sort(nil)
sorter.sort([])
sorter.sort([1])
sorter.sort([3, 1, 2])
end
