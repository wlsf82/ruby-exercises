require 'minitest/autorun'

require_relative '../summer'

class TestSummer < MiniTest::Test
  def test_sum_list_of_numbers_with_zero_elements
    summer = Summer.new

    result = summer.sum([])

    assert_equal 0, result
  end

  def test_sum_list_of_numbers_with_one_element
    summer = Summer.new

    result = summer.sum([1])

    assert_equal 1, result
  end

  def test_sum_list_of_numbers_with_two_elements
    summer = Summer.new

    result = summer.sum([1, 2])

    assert_equal 3, result
  end
end