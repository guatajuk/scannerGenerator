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

	def buildAutomaton
		if @stateList.empty?
			@initial = State.new
			nameState(@initial)
			@final = @initial
			@stateList.push(@initial)
		end
	end

	def addState
		@stateList.push(newState = State.new)
		flag = false
		begin
			puts "Type state label"
			label = gets.chomp
			@stateList.each do 
				|state| 
				if state.name == label
					puts "Error - This label is already used by another state"
				else 
					flag = true
					break
				end
			end
		end while flag
	end

	def nameState (state)
		state.name = @size.to_s
		@size += 1
	end

	def showMatrix
	end
end