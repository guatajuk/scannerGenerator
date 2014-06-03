require_relative 'State'

class Automaton

	attr_accessor :stateList, :transitionMatrix, :size

	def initialize
		@size = 0
		@stateList = []
		@transitionMatrix = []
	end

	def addState
		newState = State.new
		begin
			flag = false
			puts "Type state label: "
			label = gets.chomp
			@stateList.each do 
				|state|
				if state.name == label
					puts "Error - This label is already used by another state, try again..."
					flag = true
				end
			end
		end while flag
		puts "¿This state is a automaton final state? [yes/no]:"
		if gets.chomp == "yes"
			newState.final = true
		end
		@stateList.push(newState)
		newState.name = label
		@size += 1
		system('clear')
		puts "Statename: " + newState.name
		puts "Final State: " + (newState.isFinal? ? "true" : "false")
	end
end