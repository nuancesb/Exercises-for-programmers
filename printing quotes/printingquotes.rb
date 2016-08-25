class PrintingQuotes

  def self.get_user_input(keyboard)
    keyboard.gets.chomp
  end

  def self.ask_question(console, question)
    console.puts(question)
  end

  def self.execute_program(console, keyboard)
    ask_question(console,"What is the quote?")
    quote = get_user_input(keyboard)
    ask_question(console,"Who said it?")
    author = get_user_input(keyboard)
    console.print author + " says,\"" + quote+ "\""
  end
end
