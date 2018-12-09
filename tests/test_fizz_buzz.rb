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

    result = game.sequence

    assert_equal('Fizz', result[2])
  end

  def test_print_buzz_for_multiples_of_five
    game = FizzBuzz.new

    result = game.sequence

    assert_equal('Buzz', result[4])
  end

  def test_print_fizbuzz_for_multiples_of_three_and_five
    game = FizzBuzz.new

    result = game.sequence

    assert_equal('Fizz Buzz', result[14])
  end
end