require_relative 'Automaton'

def menu 
	begin
		option = ""
		puts "------------------"
		puts "Automaton Testing"
		puts "------------------"
		puts "1. Add state"
		puts "2. Add transition"
		puts "3. Show Transition Matrix"
		print "0. Exit \n"
		print "Choose an option: "
		option = gets.chomp.to_i
		if option < 0 || option > 3
			puts "Error - Press any key to continue"
			system('pause');
			system('clear')
		end
	end while option < 0 || option > 3 
	return option
end

system('clear')
automaton  = Automaton.new

begin 
	option = menu()
	case option
		when 1
			system('clear')
			automaton.addState
		when 0
			system('clear')
			abort
	end
end while option != 0