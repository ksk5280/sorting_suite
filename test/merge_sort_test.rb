require 'minitest'
require "merge_sort"

class MergeSortTest < Minitest::Test
  def setup
    @sorter = SortingSuite::MergeSort.new
  end

  def test_class_exists
    assert SortingSuite::MergeSort
  end

  def test_can_create_instances
    assert_instance_of SortingSuite::MergeSort, @sorter
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

  def test_can_sort_an_array_of_two
    assert_equal [1,2], @sorter.sort([2,1])
  end

  def test_can_sort_an_array_of_two_same_number
    assert_equal [1,1], @sorter.sort([1,1])
  end

  def test_can_sort_an_array_of_three_1
    assert_equal [1,2,3], @sorter.sort([2,3,1])
  end

  def test_can_sort_an_array_of_three_2
    assert_equal [1,2,2], @sorter.sort([2,2,1])
  end

  def test_can_sort_an_array_of_three_same_number
    assert_equal [1,1,1], @sorter.sort([1,1,1])
  end

  def test_can_sort_an_array_of_five
    assert_equal [1,2,3,4,5], @sorter.sort([2,5,4,3,1])
  end

  def test_can_sort_a_reversed_array_of_five
    assert_equal [0, 1, 2, 3, 4], @sorter.sort([4, 3, 2, 1, 0])
  end

  def test_can_sort_an_array_of_five_letters
    assert_equal ["a","b","c","d","e"], @sorter.sort(["b","a","e","d","c"])
  end
end
