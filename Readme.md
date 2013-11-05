
==============================================================
Práctica 8
Estado actual de TRAVIS [![Build Status](https://travis-ci.org/alu0100702293/prac8.png?branch=master)](https://travis-ci.org/alu0100702293/prac8)
==============================================================
==============================================================

Leonor Priego García
Carlos Gregorio Martín Pérez
Grupo 12 - Turno de mañana

Considere el desarrollo de una clase Ruby para representar Matrices. 
1.-) Cree una clase para representar Matrices usando desarrollo dirigido por pruebas (Test Driven Development - TDD) con la herramienta Rspec. 

Hemos definido una clase Matriz con los métodos initialize, acceso a los atributos get_filas(), get_columnas(), get_matriz(), set_matriz(). Así mismo, para operar, hemos añadido el método suma, resta, multiplicación y comparación de igualdad ==. Para finalizar, hemos querido que nuestra clase matriz trabaje con la clase fraccion, añadiendo, mediante un require la clase fraccion. 

Por otra parte hemos creado un fichero spec/spec_matriz.rb para hacer las expectativas de la clase Matriz.

2.-) Se ha es seguir la metodología de Integración continua (Continuos Integration) usando la herramienta Travis. 

3.-) Además se ha de comprobar el funcionamiento de la aplicación con la herramienta Guard de comprobación continua (Continuous testing) de manera que permita la ejecución de las pruebas definidas con rspec cuando se modifiquen. 

Creamos los ficheros Gemfile, Rakefile y Guardfile para trabajar con la herramienta Continuous Testing (Guard) y un fichero .travis.yml para trabajar con la herramienta Travis de Integración continua.



