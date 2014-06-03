require_relative "Automaton"

class BuildAutomaton

	attr_accessor :automatonStack, :symbolStack

	def initialize
		@automatonStack = []
		@symbolStack = []
	end

	def build(regularExp)
		terminal = regularExp.shift
		case terminal
		when '*'
			kleene(terminal)
		when '|'
			union(terminal)
		when '.'
			concatenation(terminal)
		else
			@symbolStack.push(terminal)
	end

	def kleene(terminal)
		automaton = Automaton.new(4)
		unless @symbolStack.empty?
			4.times { automaton. addState }
			automaton.stateList.last.final == true
			automaton.transitionMatrix[0][1] = "E" 
			automaton.transitionMatrix[0][3] = "E" 
			automaton.transitionMatrix[1][2] = @symbolStack[0] 
			automaton.transitionMatrix[2][1] = "E" 
			automaton.transitionMatrix[2][3] = "E"
		else
			#implementar para hacer concatenación entre dos automatas
			#implementar para hacer concatenación entre un automata y un simbolo del alfabeto
		end
		@automatonStack.push(automaton)
		@symbolStack = []
	end

	def union(terminal)
		automaton = Automaton.new(6)
		unless @symbolStack.empty?
			6.times { automaton.addState }
			automaton.stateList.last.final == true
			automaton.transitionMatrix[0][1] == "E"
			automaton.transitionMatrix[0][3] == "E"
			automaton.transitionMatrix[1][2] == @symbolStack[0]
			automaton.transitionMatrix[2][5] == "E"
			automaton.transitionMatrix[3][4] == @symbolStack[1]
			automaton.transitionMatrix[4][5] == "E"
		else
			#implementar para hacer union entre dos automatas
			#implementar para hacer union entre un automata y un simbolo del alfabeto
		end
		@automatonStack.push(automaton)
		@symbolStack = []
	end

	def concatenation(terminal)
		automaton = Automaton.new(3)
		unless @symbolStack.empty?  
			3.times { automaton.addState }
			automaton.stateList.last.final == true
			automaton.transitionMatrix[0][1] == @symbolStack[0]
			automaton.transitionMatrix[1][2] == @symbolStack[1]
		else
			#implementar para hacer concatenación entre dos automatas
			#implementar para hacer concatenación entre un automata y un simbolo del alfabeto
		end
		@automatonStack.push(automatonStack)
		@symbolStack = []
	end
end