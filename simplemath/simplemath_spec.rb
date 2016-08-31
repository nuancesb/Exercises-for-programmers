require_relative 'simplemath.rb'

describe SimpleMath do
  it 'shows question' do
    output = StringIO.new

    described_class.show(output,'question')

    expect(output.string).to eq("question\n")
  end

  it 'gets input from user' do
    input = StringIO.new("10") # Initialize a read buffer

    result = described_class.get_input(input)

    expect(result).to eq(10)
  end

  it 'formats input for sum' do
    a = 10
    b = 5
    total_addition = a + b

    result =  described_class.add(a, b, total_addition)

    expect(result).to eq("10 + 5 = 15")
  end

  it "runs the program with questions and final response" do
    input = StringIO.new("10\n5\n")
    output = StringIO.new()

    described_class.run(input,output)

    expect(output.string).to eq("What is the first number?\nWhat is the second number?\n10 + 5 = 15\n10 - 5 = 5\n10 * 5 = 50\n10.0 / 5 = 2.0\n")
  end

  it "formats input for difference" do
    a = 10
    b = 5
    total_difference = a - b

    result = described_class.substract(a, b, total_difference)

    expect(result).to eq("10 - 5 = 5")
  end

  it "formats input for multiplication" do
    a = 10
    b = 5
    total_multiplication = a*b

    result = described_class.multiply(a, b, total_multiplication)

    expect(result).to eq("10 * 5 = 50")
  end

  it "formats input for division" do
    a = 10
    b = 5
    total_division = a.to_f/b

    result = described_class.divide(a, b, total_division)

    expect(result).to eq("10.0 / 5 = 2.0")
  end
end

