class Matriz

	def initialize(filas, columnas, *elementos)
                @filas = filas
                @columnas = columnas
                @matriz = Array.new(filas, nil)
                i = 0
                while i<columnas do
                        @matriz[i] = Array.new(columnas, nil)
                        i = i + 1
                end

                i = 0
                while (i < filas) do
                        j = 0
                        while (j < columnas) do
                                @matriz[i][j] = elementos.shift
                                j = j + 1
                        end
                        i = i + 1
                end
        end


	def filas()
		@filas
	end
	
	def columnas()
		@columnas
	end

	def matriz(i,j)
		@matriz[i][j]
	end

	def set_matriz(i,j,valor)
		@matriz[i][j] = valor
	end

	def +(object)
                if ((object.instance_of?(Matriz) == true) && (@filas == object.filas) && (@columnas == object.columnas))
                        matrizresultado = Matriz.new(@filas, @columnas)
                        i = 0
                        while (i < @filas) do
                                j = 0
                                while (j < @columnas) do
                                        valorsumado = 0
                                        valorsumado = @matriz[i][j] + object.matriz(i,j)
                                        matrizresultado.set_matriz(i,j,valorsumado)
                                        j = j + 1
                                end
                                i = i + 1
                        end
                        return matrizresultado
                end
        end




end
