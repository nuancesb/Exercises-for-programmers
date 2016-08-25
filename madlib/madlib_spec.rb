require_relative 'madlib.rb'

describe MadLib do
  it 'shows message' do
    output = StringIO.new

    described_class.show(output,'message')

    expect(output.string).to eq("message\n")
  end

  it 'gets input from user' do
    input = StringIO.new('dog')

    user_input = described_class.get_input(input)

    expect(user_input).to eq('dog')
  end

  it 'formats final output' do
    verb = 'dance'
    adjective = 'blue'
    adverb = 'quickly'
    noun = 'cat'

    result = described_class.format_response(verb, adjective, noun, adverb)

    expect(result).to eq("Do you dance your blue cat quickly? That's hilarious!")
  end

  it 'runs the program with questions and final response' do
   input = StringIO.new("cat\ndance\nblue\nquickly")
   output = StringIO.new()

   described_class.run(input, output)

   expect(output.string).to eq("Enter a noun:\nEnter a verb:\nEnter an adjective:\nEnter an adverb:\nDo you dance your blue cat quickly? That's hilarious!\n")
  end
end
