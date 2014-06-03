require_relative 'State'

class Automaton

	attr_accessor :initial, :final, :stateList, :transitionMatrix, :size

	def initialize
		@size = 0
		@initial = ""
		@final = ""
		@stateList = []
		@transitionMatrix = []
	end

	def addState
		@stateList.push(newState = State.new)
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
		newState.name = label
		puts "¿This state is the automaton inital state? [yes/no]:"
		if gets.chomp == "yes"
			@initial = newState
		end
		puts "¿This state is a automaton final state? [yes/no]:"
		if gets.chomp == "yes"
			@final = newState
		end
	end

	def nameState (state)
		state.name = @size.to_s
		@size += 1
	end

	def showMatrix
	end
end