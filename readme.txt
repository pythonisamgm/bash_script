## CONDICIONALES: ejercicio 2

*Escribir un script que compare dos inputs (int) y nos dé los siguientes mensajes:*
- “Los números ingresados son iguales”
- “n1 es mayor que n2”
- “n2 es mayor que n1”

*He utilizado un segundo elif en lugar del else para usar el menor que (lt).*

## CONDICIONALES: ejercicio 3

*Escribir un script que nos diga si el valor ingresado es divisible por 2*

- He utilizado "módulo" y "-eq 0" para saber si el resto era cero.

## En SUSTITUCIÓN DE COMANDOS

*Un script que nos pida la fecha de nacimiento y nos diga la edad que tiene el usuario en el momento que se ejecute el script.*

*Creé dos funciones:*
1. La primera devuelve el año, pero no tiene en cuenta los meses y los días.
2. En la segunda:
   - Se separa el input con el comando "cut".
   - Convierte la fecha en segundos.
   - Pide la fecha actual en segundos con el comando "date".
   - Calcula la diferencia entre las fechas.
   - Resta los segundos en un año y los segundos totales de vida.

## BUCLES: ejercicio 1

*Hacer un script que adivine el PID del script, que nos informe en cada momento si es mayor o menor el número ingresado. Cuando acertemos el número el script termina informándonos los números de intentos.*

*Este script tiene un while loop que seguirá activo hasta que el usuario acierte el PID del script. En el if statement, he puesto primero el caso de acierto para que consuma menos recursos.*

## BUCLES: ejercicio 2

*En este ejercicio he creado un script que te da la opción de crear un archivo. Luego pregunta si quieres borrar algún archivo recursivamente (while loop), hasta que la respuesta sea negativa. Para ingresar el nombre y extensión del archivo hay que concatenar strings.*


<hr>

## CONDITIONALS: Exercise 2

*Write a script that compares two inputs (int) and gives the following messages:*
- “The entered numbers are equal”
- “n1 is greater than n2”
- “n2 is greater than n1”

*I used a second elif instead of else to use the less than (lt) operator.*

## CONDITIONALS: Exercise 3

*Write a script that tells us if the entered value is divisible by 2*

- I used "modulo" and "-eq 0" to check if the remainder was zero.

## IN COMMAND SUBSTITUTION

*A script that asks for the date of birth and tells us the age of the user at the time the script is run.*

*I created two functions:*
1. The first returns the year but does not consider months and days.
2. In the second:
   - The input is split with the "cut" command.
   - Converts the date to seconds.
   - Gets the current date in seconds using the "date" command.
   - Calculates the difference between the dates.
   - Subtracts the seconds in a year and the total seconds of life.

## LOOPS: Exercise 1

*Create a script that guesses the PID of the script, informing us at each step if the entered number is higher or lower. When the correct number is guessed, the script ends, informing us of the number of attempts.*

*This script has a while loop that remains active until the user guesses the PID of the script. In the if statement, I put the success case first to consume fewer resources.*

## LOOPS: Exercise 2

*In this exercise, I created a script that gives you the option to create a file. Then it asks if you want to delete any file recursively (while loop) until the answer is negative. To enter the name and extension of the file, strings must be concatenated.*
