require_relative 'fizz_buzz_engine'

class FizzBuzz
  def numbers
    (1..100).to_a
  end

  def sequence
    numbers.collect do |x|
      fbe = FizzBuzzEngine.new(x)
      fbe.value
    end
  end
end