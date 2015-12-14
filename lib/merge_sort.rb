require 'pry'

class MergeSort
	def sort(unsorted)
		return nil if unsorted.nil?
		return unsorted if unsorted.length <= 1
		merge(split(unsorted))
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
    split_array = [left, right]
  end

	def merge(split_array)
		return split_array if split_array.length == 1
		sorter(merge(split_array[0]), merge(split_array[1]))
	end

	def sorter(left_array, right_array)
		sorted = []
		left = left_array.shift
		right = right_array.shift

		while left || right
			insert_left = false

			if left && right
				insert_left = left < right
			elsif left && !right
				insert_left = true
			elsif !left && right
				insert_left = false
			end

			if insert_left
				sorted << left
				left = left_array.empty? ? nil : left_array.shift
			else
				sorted << right
				right = right_array.empty? ? nil : right_array.shift
			end
		end
		sorted
	end
end


if __FILE__ == $0
  sorter = MergeSort.new # => #<MergeSort:0x007f9f2b02d4e8>
	sorter.sort(["d","b","a","c"]) # => ["a", "b", "c", "d"]
end
