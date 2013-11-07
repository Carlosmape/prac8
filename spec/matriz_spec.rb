require 'matriz'
require 'fraccion'

#pruebas sobre la clase fraccion
describe Fraccion do
	it "instanciacion de un racional" do
		@fa = Fraccion.new(1,2)
		@fa.numerador.should == 1
		@fa.denominador.should == 2
	end
end

#pruebas sobre la clase matriz
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
		
		it " suma con racionales "do
			@fa = Fraccion.new(1,2)
			@fb = Fraccion.new(3,4)
			@fc = Fraccion.new(5,6)
			@fd = Fraccion.new(7,8)
			@ra = Fraccion.new(11,8)
			@rb = Fraccion.new(19,12)
			@a = Matriz.new(2,2,@fa,@fb,@fc,@fd)
			@b = Matriz.new(2,2,@fd, @fc, @fb, @fa)
			@c = Matriz.new(2,2,@ra,@rb,@rb,@ra)
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
		
		it " producto con racionales"do
			@fa = Fraccion.new(1,2)
			@fb = Fraccion.new(3,4)
			@fc = Fraccion.new(5,6)
			@fd = Fraccion.new(7,8)
			
			@ra = Fraccion.new(7,8)
			@rb = Fraccion.new(33,32)
			@rc = Fraccion.new(55,48)
			@rd = Fraccion.new(89,64)
			
			@a = Matriz.new(2,2,@fa,@fb,@fc,@fd)
			@b = Matriz.new(2,2,@ra,@rb,@rc,@rd)
			
			( @a * @a ).should == @b
		end
	end
end
#fin
