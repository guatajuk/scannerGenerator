class State
	
	attr_accessor :name, :initial, :final

	def initialize 
		@name = ""
		@final = false
	end

	def isFinal?
		return @final ? true : false
	end
end