$LOAD_PATH.unshift File.dirname(__FILE__) + '/..'

require 'printingquotes'

PrintingQuotes.execute_program(Kernel,STDIN)