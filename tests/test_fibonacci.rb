require 'minitest/autorun'

require_relative '../fibonacci'

class TestFibonacci < Minitest::Test
  def test_fibonacci_of_zero_is_zero
    fib_of_zero = Fibonacci.of(0)

    assert_equal 0, fib_of_zero
  end

  def test_fibonacci_of_one_is_one
    fib_of_one = Fibonacci.of(1)

    assert_equal 1, fib_of_one
  end

  def test_fibonacci_of_two_is_one
    fib_of_two = Fibonacci.of(2)

    assert_equal 1, fib_of_two
  end

  def test_fibonacci_of_three_is_two
    fib_of_three = Fibonacci.of(3)

    assert_equal 2, fib_of_three
  end

  def test_fibonacci_of_ten_is_fifty_five
    fib_of_ten = Fibonacci.of(10)

    assert_equal 55, fib_of_ten
  end
end