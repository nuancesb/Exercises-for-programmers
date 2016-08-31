class SimpleMath

  def self.show(output,question)
    output.puts(question)
  end

  def self.get_input(input)
    input.gets.to_i
  end

  def self.add(a,b,total_addition)
    "#{a} + #{b} = #{total_addition}"
  end

  def self.substract(a, b, total_difference)
    "#{a} - #{b} = #{total_difference}"
  end

  def self.multiply(a, b, total_multiply)
    "#{a} * #{b} = #{total_multiply}"
  end

  def self.divide(a, b, total_divide)
    "#{a.to_f} / #{b} = #{total_divide}"
  end

  def self.run(input,output)
    show(output, "What is the first number?")
    first_number = get_input(input)
    show(output,"What is the second number?")
    second_number = get_input(input)
    total_addition = first_number + second_number
    calculation_1 = add(first_number, second_number,total_addition)
    show(output, calculation_1)
    total_difference = first_number - second_number
    calculation_2 = substract(first_number, second_number, total_difference)
    show(output, calculation_2)
    total_multiply = first_number * second_number
    calculation_3 = multiply(first_number,second_number, total_multiply)
    show(output, calculation_3)
    total_divide = first_number.to_f / second_number
    calculation_4 = divide(first_number, second_number, total_divide)
    show(output, calculation_4)
  end
end


