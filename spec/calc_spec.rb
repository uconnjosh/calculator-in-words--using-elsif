require ('rspec')
require ('calc')

describe('calc') do
	it('takes an english sentence, arithmatic command, and returns the math!') do
		calc('What is 5 plus 3').should(eq(8))
	end
end
describe('splitter') do    
	it('can take multiple arithmatic command statements, seperated by a ? and return their answers') do
		splitter('What is 5 plus 3? What is 6 divided by 3?').should(eq([8, 2]))
end
end