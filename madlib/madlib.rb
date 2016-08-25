class MadLib

  def self.show(output, message)
    output.puts(message)
  end

  def self.get_input(input)
    input.gets.chomp
  end

  def self.format_response(verb, adjective, noun, adverb)
    "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
  end

  def self.run(input, output)
    show(output, 'Enter a noun:')
    noun = get_input(input)
    show(output, 'Enter a verb:')
    verb = get_input(input)
    show(output, 'Enter an adjective:')
    adjective = get_input(input)
    show(output, 'Enter an adverb:')
    adverb = get_input(input)
    response = format_response(verb, adjective, noun, adverb)
    show(output, response)
  end
end
