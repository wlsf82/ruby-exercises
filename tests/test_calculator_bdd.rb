require 'minitest/autorun'

require_relative 'aaa'
require_relative '../calculator'

class TestCalculator < Minitest::Test
  def test_addition
    Given { @calculator = Calculator.new }

    When { @result = @calculator.add(-1, 1) }

    Then { assert_equal 0, @result }
  end

  def test_subtraction
    Given { @calculator = Calculator.new }

    When { @result = @calculator.subtract(-1, 1) }

    Then { assert_equal -2, @result }
  end

  def test_multiplication
    Given { @calculator = Calculator.new }

    When { @result = @calculator.multiply(-1, 1) }

    Then { assert_equal -1, @result }
  end

  def test_division
    Given { @calculator = Calculator.new }

    When { @result = @calculator.divide(-2, 1) }

    Then { assert_equal -2, @result }
  end
end