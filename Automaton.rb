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

	def nameState (state)
		state.name = @size.to_s
		@size += 1
	end

end