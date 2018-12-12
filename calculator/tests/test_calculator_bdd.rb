require 'minitest/autorun'

require_relative 'aaa'
require_relative '../calculator'

class TestCalculator < Minitest::Test
  def test_addition_using_bdd_style
    Given { @calculator = Calculator.new }

    When { @result = @calculator.add(-1, 1) }

    Then { assert_equal 0, @result }
  end

  def test_subtraction_using_bdd_style
    Given { @calculator = Calculator.new }

    When { @result = @calculator.subtract(-1, 1) }

    Then { assert_equal -2, @result }
  end

  def test_multiplication_using_bdd_style
    Given { @calculator = Calculator.new }

    When { @result = @calculator.multiply(-1, 1) }

    Then { assert_equal -1, @result }
  end

  def test_division_using_bdd_style
    Given { @calculator = Calculator.new }

    When { @result = @calculator.divide(-2, 1) }

    Then { assert_equal -2, @result }
  end

  def test_addition_using_aaa_style
    Arrange { @calculator = Calculator.new }

    Act { @result = @calculator.add(-1, 1) }

    Assert { assert_equal 0, @result }
  end

  def test_subtraction_using_aaa_style
    Arrange { @calculator = Calculator.new }

    Act { @result = @calculator.subtract(-1, 1) }

    Assert { assert_equal -2, @result }
  end

  def test_multiplication_using_aaa_style
    Arrange { @calculator = Calculator.new }

    Act { @result = @calculator.multiply(-1, 1) }

    Assert { assert_equal -1, @result }
  end

  def test_division_using_aaa_style
    Arrange { @calculator = Calculator.new }

    Act { @result = @calculator.divide(-2, 1) }

    Assert { assert_equal -2, @result }
  end
end