require 'pry'
class CountingCharacters
    def self.execute_program(console,keyboard)
         name = keyboard.gets
        console.print("What is the input string?\n""#{name}")
        console.print("\n#{name} has #{name.length} characters")
    end
end
