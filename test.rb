require_relative 'BuildAutomaton'

def menu 
	begin
		option = ""
		puts "------------------"
		puts "Automaton Testing"
		puts "------------------"
		puts "1. Add regex"
		puts "2. print automata"
		print "0. Exit \n"
		print "Choose an option: "
		option = gets.chomp.to_i
		if option < 0 || option > 2
			puts "Error - Press any key to continue"
			system('pause');
			system('clear')
		end
	end while option < 0 || option > 2
	return option
end

system('clear')
ba = BuildAutomaton.new
begin 
	option = menu()
	case option
		when 1
			system('clear')

			ba.build(["a", "b", "|"])
			
		when 2
			puts "mmm"
			print ba.automatonStack.first.transitionMatrix
			puts "mmm"
		when 0
			system('clear')

			abort
	end
end while option != 0