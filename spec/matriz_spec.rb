require "matriz"


describe Fraccion do
	it "instanciacion de un racional" do
		@fa = Fraccion.new(1,2)
		@fa.numerador.should == 1
		@fa.denominador.should == 2
	end
end

describe Matriz do
	it "# instanciacion de una matriz" do
		@a = Matriz.new(2,2,1,1,2,2)
	end
	it "# instanciacion de una matriz con racionales" do
		@fa = Fraccion.new(1,2)
		@a = Matriz.new(2,2,@fa,@fa,2,2)
	end

	describe "# operaciones con matrices" do
		it " suma "do
			@a = Matriz.new(2,2,1,1,2,2)
			@b = Matriz.new(2,2,1,1,2,2)
			@c = Matriz.new(2,2,2,2,4,4)
			(@a + @b).should == @c
		end
		
		it " resta "do
			@a = Matriz.new(2,2,2,2,3,3)
			@b = Matriz.new(2,2,1,1,2,2)
			@c = Matriz.new(2,2,1,1,1,1)
			(@a - @b).should == @c
		end
		 it " producto "do
			@a = Matriz.new(3,3,1,1,1,2,2,2,3,3,3)
			@b = Matriz.new(3,3,1,2,3,1,2,3,1,2,3)
			@c = Matriz.new(3,3,3,6,9,6,12,18,9,18,27)
			(@a * @b).should == @c
		end

	end
end
