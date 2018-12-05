class Calculator
  def add(a, b)
    a+b
  end

  def subtract(a, b)
    a-b
  end

  def multiply(a, b)
    a*b
  end

  def divide(a, b)
    a/b
  end
end

calculator = Calculator.new

result_of_add = calculator.add(1, 2)
result_of_subtract = calculator.subtract(10, 4)
result_of_multiply = calculator.multiply(2, 5)
result_of_divide = calculator.divide(4, 2)

puts "1 + 2 = #{result_of_add}"
puts "10 - 4 = #{result_of_subtract}"
puts "2 * 5 = #{result_of_multiply}"
puts "4 / 2 = #{result_of_divide}"
