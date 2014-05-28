class State
	
	attr_accessor :name, :initial, :final

	def initialize
		@name = ""
		@initial = ""
		@final = ""
		@transition = []
	end

	def isFinal?
		return @final ? true : false
	end

	def isInitial?
		return @initial ? true : false
	end

end