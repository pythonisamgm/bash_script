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
