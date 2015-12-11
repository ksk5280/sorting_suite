require 'minitest/autorun'
require 'minitest/pride'
require 'bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_class_exists
    assert BubbleSort
  end

  def test_can_create_instances
    sorted = BubbleSort.new([])
    assert_instance_of BubbleSort, sorted
  end

  def test_can_sort_an_empty_array
    sorted = BubbleSort.new([])
    assert_equal [], sorted.sort
  end

  def test_can_sort_an_array_of_one
    sorted = BubbleSort.new(["a"])
    assert_equal ["a"], sorted.sort
  end

  def test_can_sort_an_array_of_two
    sorted = BubbleSort.new(["d", "b"])
    assert_equal ["b", "d"], sorted.sort
  end

  def test_can_sort_an_array_of_three
    sorted = BubbleSort.new(["d", "b", "a"])
    assert_equal ["a", "b", "d"], sorted.sort
  end

  def test_can_sort_an_array_of_four
    sorted = BubbleSort.new(["d", "b", "a", "c"])
    assert_equal ["a", "b", "c", "d"], sorted.sort
  end

  def test_can_sort_an_array_of_six_numbers
    sorted = BubbleSort.new([48, 23, 63, 54, 3, 20])
    assert_equal [3, 20, 23, 48, 54, 63], sorted.sort
  end
end
