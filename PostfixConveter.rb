class PostfixConveter

	attr_accessor :inputStack, :output, :regularExpression, :splittedAlphabet

	Precedence = { '+' => 4, '*' => 3, '.' => 2, '|' => 1, '(' => 0, }

	def initialize
		@inputStack = []
		@output = ""
		@alphabet = ""
		@regularExpression = ""
	end

	def parse
		@regularExpression.each_char do |token| 
			if isOperator(token) 
				popLower(token)
				@inputStack.push(token)
			elsif token == ')'
				popCloseParanthesis
			elsif token == '('
				@inputStack.push(token)
			else 
				@output += token
			end
		end
		cleanStack
		return @output
	end

	def isOperator(char)
		return char =~ /[\.\s*\|]/
	end

	def isParanthesis(char)
		return char =~ /[\)\(]/
	end

	def popLower(token)
		until @inputStack.empty? || Precedence[token] > Precedence[@inputStack.last]
			@output += @inputStack.pop
		end
	end

	def popCloseParanthesis
		until @inputStack.last == '('
			raise "Error - Mismatched Paranthesis" if @inputStack.empty? 
			@output += @inputStack.pop
		end
		@inputStack.pop
	end

	def cleanStack
		until @inputStack.empty?
			raise "Error - Mismatched Paranthesis" if isParanthesis(@inputStack.last)
			@output += @inputStack.pop
		end
	end

	def splitCharacters (alphabet)
		alphabet.gsub! "\r", ""
		alphabet.gsub! "\n", ""
		alphabet.gsub! "\t", ""
		alphabet.gsub! " ", ""
		alphabet.split(//).each { |m| splittedAlphabet << m } 
		splittedAlphabet.uniq!
	end
end