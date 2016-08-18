class PrintingQuotes

  def self.execute_program(console,keyboard)
    quote = keyboard.gets
    console.print("What is the quote?")
    console.print("#{quote}")
    console.print("Who said it?")
  end
end
