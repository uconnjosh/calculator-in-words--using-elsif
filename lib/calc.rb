def splitter(command)
	solution = []
	questions = command.split("?")
	questions.each {|question| solution << calc(question)}
	solution
end

def calc(command)
	command = command.split(" ")	
	answer = []
	command.each do |part|
		if part == "0"
			answer << part
		elsif part.to_f > 0
			answer << part
		elsif part == "plus"
			answer << "+"
		elsif part == "minus"
			answer << "-"
		elsif part == "times"
			answer << "*"
		elsif part == "divided"
			answer << "/"
		elsif part == "to"
			answer << "**"
		end
	end
	
	answer = eval(answer.join(" "))
end

p splitter("What is 5 plus 4? What is 6 divided by 3?")