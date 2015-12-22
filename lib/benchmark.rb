require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'

module SortingSuite
  class Benchmark
    def time(sort_type, arr)
      time_start    = Time.new
      sorter        = sort_type.new.sort(arr)
      time_finish   = Time.new
      time_to_sort  = "%f" % (time_finish - time_start).to_s

      "#{sort_type}".sub('SortingSuite::','') + " took #{time_to_sort} seconds"
    end

    def time_compare(arr)
      bubble    = time(SortingSuite::BubbleSort,    arr)
      insertion = time(SortingSuite::InsertionSort, arr)
      merge     = time(SortingSuite::MergeSort,     arr)
      sentences = [bubble, insertion, merge]

      sorters = sentences.map do |sentence|
        sentence.split[0]
      end
      
      times = sentences.map do |sentence|
        sentence.split[2]
      end

      Hash[sorters.zip times]
    end

    def fastest(arr)
      sorters_and_times = time_compare(arr)
      fast = sorters_and_times.select { |_, v| v == sorters_and_times.values.min }
      "#{fast.keys[0]} is the fastest"

    end

    def slowest(arr)
      sorters_and_times = time_compare(arr)
      slow = sorters_and_times.select { |_, v| v == sorters_and_times.values.max }
      "#{slow.keys[0]} is the slowest"
    end
  end
end

if __FILE__ == $0
  benchmark = SortingSuite::Benchmark.new
  arr = [3,3,4,5,1]

  benchmark.fastest(arr) # => "InsertionSort is the fastest"
  benchmark.slowest(arr) # => "MergeSort is the slowest"
end
