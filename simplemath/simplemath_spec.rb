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
    total = a + b

    result =  described_class.format_response_addition(a,b,total)

    expect(result).to eq("10 + 5 = 15")
  end

  it "runs the program with questions and final response" do
    input = StringIO.new("10\n5\n")
    output = StringIO.new()

    described_class.run(input,output)

    expect(output.string).to eq("What is the first number?\nWhat is the second number?\n10 + 5 = 15\n")
  end

end
