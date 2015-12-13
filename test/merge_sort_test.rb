require 'minitest'
require "merge_sort"

class MergeSortTest < Minitest::Test
  def setup
    @sorter = MergeSort.new
  end

  def test_class_exists
    assert MergeSort
  end

  def test_can_create_instances
    assert_instance_of MergeSort, @sorter
  end

  def test_parameter_can_be_nil
    assert_nil @sorter.sort(nil)
  end

  def test_can_sort_an_empty_array
    assert_equal [], @sorter.sort([])
  end

  def test_can_sort_an_array_of_one
    assert_equal [1], @sorter.sort([1])
  end

  def test_can_sort_an_array_of_two_1
    assert_equal [1,2], @sorter.sort([2,1])
  end

  def test_can_sort_an_array_of_two_2
    assert_equal [1,1], @sorter.sort([1,1])
  end

  def test_can_sort_an_array_of_three
    assert_equal [1,2,3], @sorter.sort([2,3,1])
  end
end
