
<h2>#CONDICIONALES: ejercicio 2</h2>
<em>-Escribir un scripts que compare dos inputs (int) y nos de los siguientes mensajes:
   “Los números ingresados son iguales”
   “n1 es mayor que n2”
   “n2 es mayor que n1”</em>
<ul><li>He utilizado un segundo elif en lugar del else para usar el menor que (lt).</li></ul>

<h2>CONDICIONALES: ejercicio 3</h2>
<em>Escribir un script que nos diga si el valor ingresado es divisible por 2</em>
<ul><li>He utilizado "módulo" y "-eq 0" para saber si el resto era cero. </li></ul>

<h2>En SUSTITUCION DE COMANDOS</h2> 
<em>Un script que nos pida la fecha de nacimiento y nos diga la edad que tiene el usuario en el momento que se ejecute el script.
</em>
<p>creé dos funciones.</p><ol> La primera devuelve el año, pero no tiene en cuenta los meses y los días. </ol>
<ol><li>En la segunda, se separa el input con el comando "cut".</li>
    <li> Convierte la fecha en segundos</li>
    <li> Pide la fecha actual en segundos con el comando "date"</li>
     <li> calcula la diferencia entre las fechas </li>
      <li> resta segundos en un año y segundos totales de vida</li>
    
    </ol>

<h2>BUCLES: ejercicio 1.</h2>
<em>Hacer un script que adivine el PID del script, que nos informe en cada momento si es mayor o menor el número ingresado. Cuando acertemos el número el script termina informandonos los números de intentos</em>
<p> este script tiene un while loop que seguirá activo hasta que el usuario acierte el PID del script. 
En el if statement, he puesto primero el caso de acierto para que consuma menos recursos</p>

<h2>BUCLES: ejercicio 2. </h2>
<em></em>
<p>En este ejercicio he creado un script que te da la opción de crear un archivo. Luego pregunta si quieres borrar algún archivo recursivamente (while loop), hasta que la respuesta sea negativa. Para ingresar el nombre y extensión del archivo hay que concatenar strings.</p>
