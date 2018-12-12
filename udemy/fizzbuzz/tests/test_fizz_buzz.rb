require 'minitest/autorun'

require_relative '../fizz_buzz'

class TestFizzBuzz < Minitest::Test
  def test_generate_numbers_from_1_to_100
    game = FizzBuzz.new

    result = game.numbers

    assert_equal((1..100).to_a, result)
  end

  def test_print_fizz_for_multiples_of_three
    game = FizzBuzz.new

    result = game.transform(3)

    assert_equal('Fizz', result)
  end

  def test_print_buzz_for_multiples_of_five
    game = FizzBuzz.new

    result = game.transform(5)

    assert_equal('Buzz', result)
  end

  def test_print_fizbuzz_for_multiples_of_three_and_five
    game = FizzBuzz.new

    result = game.transform(15)

    assert_equal('Fizz Buzz', result)
  end

  def test_print_number_if_not_multiple_of_three_or_five
    game = FizzBuzz.new

    result = game.transform(1)

    assert_equal(1, result)
  end
end