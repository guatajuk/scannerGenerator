require_relative 'State'

state = State.new()
option = ""

puts "------------------"
puts "Automaton Testing"
puts "------------------"

until option == '2'
	puts "1. Add state"
	print "2. Exit \n"
	print "Choose an option: "

	option = gets.chomp

	case option
	when '1'
		puts "Hola"
	when '2'
		abort ("Bye bye")
	else 
		puts "Do it better..."
	end
end