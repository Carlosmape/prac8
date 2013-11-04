require "matriz"

describe Matriz do
	it "# instanciacion de una matriz" do
		@a = Matriz.new(2,2,1,1,2,2)
	end
	describe "# operaciones con matrices" do
		it " suma "do
			@a = Matriz.new(2,2,1,1,2,2)
			@b = Matriz.new(2,2,1,1,2,2)
			@c = Matriz.new(2,2,2,2,4,4)
			(@a + @b).should == @c
		end
	end
end
