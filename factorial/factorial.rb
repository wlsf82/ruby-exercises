class Factorial
  def self.calculate(n)
    result = 1
    2.upto(n) { |x| result *= x }
    result
  end
end