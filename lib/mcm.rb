
#metodo para hallar el minimo comun multiplo de los dos numeros pasados como parametros
def mcm(a,b)
        #mediante el metodo de Euclides, resolvemos el minimo comun multiplo mediante el
        #maximo comun divisor
        aux=gcd(a,b)
        (a/aux)*b
end
