class SimpleMath

  def self.show(output,question)
    output.puts(question)
  end

  def self.get_input(input)
    input.gets.to_i
  end

  def self.format_response_addition(a,b,total)
    "#{a} + #{b} = #{total}"
  end

  def self.run(input,output)
    show(output, "What is the first number?")
    first_number = get_input(input)
    show(output,"What is the second number?")
    second_number = get_input(input)
    total = first_number + second_number
    response = format_response_addition(first_number, second_number,total)
    show(output, response)
  end
end


