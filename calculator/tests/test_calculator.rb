require 'minitest/autorun'

require_relative '../calculator'

class TestCalculator < Minitest::Test
  def test_addition
    calculator = Calculator.new

    result = calculator.add(4, 4)

    assert_equal 8, result
  end

  def test_subtraction
    calculator = Calculator.new

    result = calculator.subtract(4, 5)

    assert_equal -1, result
  end

  def test_multiplication
    calculator = Calculator.new

    result = calculator.multiply(5, 5)

    assert_equal 25, result
  end

  def test_division
    calculator = Calculator.new

    result = calculator.divide(4, 2)

    assert_equal 2, result
  end
end