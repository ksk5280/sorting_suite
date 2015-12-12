require 'minitest/autorun'
require 'minitest/pride'
require 'bubble_sort'

class BubbleSortTest < Minitest::Test
  def setup
    @sorted = BubbleSort.new
  end

  def test_class_exists
    assert BubbleSort
  end

  def test_can_create_instances
    assert_instance_of BubbleSort, @sorted
  end

  def test_can_sort_an_empty_array
    assert_equal [], @sorted.sort([])
  end

  def test_can_sort_an_array_of_one
    assert_equal ["a"], @sorted.sort(["a"])
  end

  def test_can_sort_an_array_of_two_1
    assert_equal ["b", "d"], @sorted.sort(["d", "b"])
  end

  def test_can_sort_an_array_of_two_2
    assert_equal ["b", "d"], @sorted.sort(["b", "d"])
  end

  def test_can_sort_an_array_of_three_1
    assert_equal ["a", "b", "d"], @sorted.sort(["d", "b", "a"])
  end

  def test_can_sort_an_array_of_three_2
    assert_equal ["a", "b", "d"], @sorted.sort(["d", "a", "b"])
  end

  def test_can_sort_an_array_of_three_3
    assert_equal ["a", "b", "d"], @sorted.sort(["b", "d", "a"])
  end

  def test_can_sort_an_array_of_four_1
    assert_equal ["a", "b", "c", "d"], @sorted.sort(["d", "b", "a", "c"])
  end

  def test_can_sort_an_array_of_four_2
    assert_equal ["a", "b", "c", "d"], @sorted.sort(["c", "b", "d", "a"])
  end

  def test_can_sort_an_array_of_four_3
    assert_equal ["a", "a", "b", "d"], @sorted.sort(["a", "b", "d", "a"])
  end

  def test_can_sort_an_array_of_six_numbers
    assert_equal [3, 20, 23, 48, 54, 63], @sorted.sort([48, 23, 63, 54, 3, 20])
  end
end
