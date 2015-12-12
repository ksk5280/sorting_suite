require 'minitest'
require 'insertion_sort'
require 'pry'

class InsertionSortTest < Minitest::Test
  def setup
    @sorter = InsertionSort.new
  end

  def test_class_exists
    assert InsertionSort
  end

  def test_can_create_instances
    assert_instance_of InsertionSort, @sorter
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
    assert_equal [1, 2], @sorter.sort([2, 1])
  end

  def test_can_sort_an_array_of_two_2
    assert_equal [1, 2], @sorter.sort([1, 2])
  end

  def test_can_sort_an_array_of_two_same_number
    assert_equal [1, 1], @sorter.sort([1, 1])
  end

  def test_can_sort_an_array_of_three_1
    assert_equal [0, 1, 4], @sorter.sort([1, 0, 4])
  end

  def  test_can_sort_an_array_of_three_2
    assert_equal [0, 1, 4], @sorter.sort([4, 1, 0])
  end

  def  test_can_sort_an_array_of_three_same_number
    assert_equal [0, 1, 1], @sorter.sort([1, 1, 0])
  end

  def  test_can_sort_an_array_of_three_same_number
    assert_equal [1, 1, 1], @sorter.sort([1, 1, 1])
  end

  def test_can_sort_an_array_of_five
    assert_equal [0, 1, 2, 3, 4], @sorter.sort([1, 0, 4, 3, 2])
  end
end
