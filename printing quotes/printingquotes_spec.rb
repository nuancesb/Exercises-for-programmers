require_relative 'printingquotes.rb'

 describe PrintingQuotes do
   it "prints a question to the user" do
     console = StringIO.new("What is the quote?")
     keyboard = StringIO.new("")

     described_class.execute_program(console,keyboard)

     expect(console.string).to(include("What is the quote?"))
   end

   it "prints bonjour when a user types it " do
     console = StringIO.new("What is the quote?")
     keyboard = StringIO.new("bonjour")

     described_class.execute_program(console,keyboard)

     expect(console.string).to(include("bonjour"))
   end

   it "prints a second question" do
     console = StringIO.new("Who said it?")
     keyboard = StringIO.new()

     described_class.execute_program(console,keyboard)

     expect(console.string).to(include("Who said it?"))
   end  
  end
