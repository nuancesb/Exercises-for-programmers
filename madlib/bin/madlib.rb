$LOAD_PATH.unshift File.dirname(__FILE__) + '/..'

require 'madlib'

MadLib.run(STDIN,STDOUT)