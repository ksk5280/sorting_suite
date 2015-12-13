require 'pry'

class MergeSort
  attr_reader :sorted

  def initialize
    @sorted = []
  end

  def sort(unsorted)
    if !unsorted
      nil
    elsif unsorted.length == 0
      []
    elsif unsorted.length == 1
      unsorted
    else
    split_array = split(unsorted)
    # => [[2], [[3], [1]]]
    merge(split_array) # =>
    end
  end

  def split(unsorted)
    mid = unsorted.length / 2
    left = unsorted[0...mid]
    right = unsorted[mid..-1]
    if left.length > 1
      left = split(left)
    end
    if right.length > 1
      right = split(right)
    end
    split_array = [left, right] # => [[3], [1]], [[2], [[3], [1]]]
  end

  def look

  end

  def merge(split_array)
    split_array # => [[2], [[3], [1]]]
    if split_array[0].length == 0
      sorted << split_array[1].shift
    elsif split_array[1].length == 0
      sorted << split_array[0].shift
    end
    sorted # => []
    left = split_array[0] # => [2]
    right = split_array[1] # => [[3], [1]]
    left.length # => 1
    left.length # => 1
    if left.length == 0 && right.length == 0
      sorted
    elsif split_array[0][0] < split_array[1][0] # ~> ArgumentError: comparison of Fixnum with Array failed
      sorted << split_array[0].shift
    else
      sorted << split_array[1].shift
    end

    sorted # =>
    split_array # =>
    if split_array[0].length == 0 && split_array[1].length == 0
      sorted
    else
      merge(split_array)
    end
  end
  #
  #   sorted[0][0][0]# => 1
  #   sorted[1][0][0] # => NoMethodError: undefined method `[]' for nil:NilClass
  #   if sorted[0][0][0] < sorted[1][0][0]
  #     new_sorted << sorted[0].shift # =>
  #     sorted # =>
  #   else
  #     new_sorted << sorted[1].shift
  #   end
  #
  #   sorted # =>
  #   new_sorted # =>
  #   if sorted[0][0][0] < sorted[1][0][0]
  #     new_sorted << sorted[0].shift
  #   else
  #     new_sorted << sorted[1].shift
  #   end
  #
  #   sorted # =>
  #   new_sorted # =>
  #   if sorted[0][0][0] < sorted[1][0][0]
  #     new_sorted << sorted[0].shift
  #   else
  #     new_sorted << sorted[1].shift
  #   end
  #
  #   sorted # =>
  #   new_sorted # =>
  #
  #   new_sorted.flatten # =>
  # end
end


if __FILE__ == $0
  array = MergeSort.new
  array.sort([2,3,1]) # =>
end

# ~> ArgumentError
# ~> comparison of Fixnum with Array failed
# ~>
# ~> /Users/kimiko/Documents/Turing/1module/projects/sorting_suite/lib/merge_sort.rb:55:in `<'
# ~> /Users/kimiko/Documents/Turing/1module/projects/sorting_suite/lib/merge_sort.rb:55:in `merge'
# ~> /Users/kimiko/Documents/Turing/1module/projects/sorting_suite/lib/merge_sort.rb:20:in `sort'
# ~> /Users/kimiko/Documents/Turing/1module/projects/sorting_suite/lib/merge_sort.rb:105:in `<main>'
