require_relative 'State'

class Automaton

	attr_accessor :stateList, :transitionMatrix

	def initialize(n)
		@stateList = []
		@transitionMatrix = Array.new(n){ |i| Array.new(n){|i| -1 }}
	end

	def addState
		newState = State.new
		newState.name = @stateList.size
		@stateList.push(newState)
	end
end