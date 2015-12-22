require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'

module SortingSuite
  class Benchmark
    def time(sort_type, arr)
      time_start = Time.new
      sorter = sort_type.new.sort(arr)
      time_finish = Time.new
      time_to_sort = time_finish - time_start
      "#{sort_type} took #{time_to_sort} seconds"
    end

    def fastest

    end

    def slowest

    end
  end
end

if __FILE__ == $0
  benchmark = SortingSuite::Benchmark.new # => #<SortingSuite::Benchmark:0x007face1abedd0>
  benchmark.time(SortingSuite::BubbleSort, [3,3,4,5,1]) # => "SortingSuite::BubbleSort took 8.0e-06 seconds"
  benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1]) # => "SortingSuite::InsertionSort took 7.7e-05 seconds"
  benchmark.time(SortingSuite::MergeSort, [3,3,4,5,1]) # => "SortingSuite::MergeSort took 1.0e-05 seconds"
end
