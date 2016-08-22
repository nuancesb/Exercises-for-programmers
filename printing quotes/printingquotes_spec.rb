require_relative 'printingquotes.rb'

 describe PrintingQuotes do
  it "asks for the quote" do
     console = StringIO.new()

     described_class.ask_question(console,"What is the quote?")

     expect(console.string).to eq("What is the quote?\n")
   end

   it "gets the user input for the quote" do
     keyboard = StringIO.new("viva la fiesta")

     expect(described_class.get_user_input(keyboard)).to eq("viva la fiesta")
   end

  it "asks for the author's name" do
     console = StringIO.new()

     described_class.ask_question(console,"Who said it?")

     expect(console.string).to eq("Who said it?\n")
   end

  it "runs the program and prints questions and response" do
   console = StringIO.new()
   keyboard = StringIO.new("hello\nSophie\n")

   described_class.execute_program(console,keyboard)

   expect(console.string).to eq("What is the quote?\nWho said it?\nSophie says,\"hello\"") 

  end
 end
