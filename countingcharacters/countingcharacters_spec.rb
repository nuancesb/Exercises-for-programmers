require_relative 'countingcharacters.rb'

describe CountingCharacters do
  it "prints a question to the user" do
    console = StringIO.new()
    keyboard = StringIO.new("homer")

    described_class.execute_program(console,keyboard)

    expect(console.string).to(include("What is the input string?"))
  end

  it "prints Sophie when the user typed it" do
    console = StringIO.new()
    keyboard = StringIO.new("Sophie")
    described_class.execute_program(console,keyboard)

    expect(console.string).to(include("\nSophie"))
  end

  it "prints Homer when the user typed it" do
    console = StringIO.new()
    keyboard = StringIO.new("Homer")
    described_class.execute_program(console,keyboard)

    expect(console.string).to(include("\nHomer"))
  end
   
  it "prints homer has 5 characters." do
    console = StringIO.new()
    keyboard = StringIO.new("Homer")
    described_class.execute_program(console,keyboard)

    expect(console.string).to(include("Homer has 5 characters"))
  end
end
