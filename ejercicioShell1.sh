#VARIABLES: ejercicio 1. Escribir el siguiente texto con variables:

nombre="Marta"
edad=39
ciudad="Sevilla"

echo "Mi nombre es $nombre tengo $edad años y vivo en $ciudad"

#VARIABLES: ejercicio 2.  -Escribir el siguiente texto pero con inputs por consola:

#read -p "¿Cual es tu actividad favorita?. Escribe la respuesta: " actividad

#read -p "¿Cual es tu comida favorita?. Escribe la respuesta: " comida

#echo “Mi actividad favorita es $actividad. Mi comida favorita es $comida”

#PARAMETROS (argumentos posicionales): ejercicio 1. Pasar tres parámetros e imprime el que está en la posición 1 y 3
#echo "el primer parametro es $1"
#echo "el tercer parametro es $3"


#PARAMETROS (argumentos posicionales): ejercicio 2. -Completar la siguiente frase:
#“En el fichero ” <aquí va el nombre del fichero> “existen” <aquí va la cantidad de parámetros>
#echo "en el fichero $()

#CONDICIONALES: ejercicio 1
#id=$(id)

#if [ "$id" != "root" ]; then
 #   echo "No tiene acceso como root"
#fi

#CONDICIONALES: ejercicio 2. Escribir un scripts que compare dos inputs (int) y nos de los siguientes mensajes:
#read -p "ingresa un numero: " n1
#read -p "ingresa otro numero: " n2

#if [ "$n1" = "$n2" ]; then
#   echo 'Los números ingresados son iguales'
#elif [ "$n1" -gt "$n2" ]; then
#    echo "$n1 es mayor que $n2"
#elif [ "$n1" -lt "$n2" ]; then
#    echo "$n2 es mayor que $n1"
#fi

#CONDICIONALES: ejercicio 3. Escribir un script que nos diga si el valor ingresado es divisible por 2
#read -p "ingresa un numero: " n1
#divisor=2
#modulo=$((n1 % divisor))
#if [ $modulo -eq 0 ]; then
#   echo "el valor ingresado es divisible por 2"
#else
#   echo "el valor ingresado no es divisible por 2"
#fi

#SUSTITUCION DE COMANDOS: ejercicio 1. Un script que nos pida la fecha de nacimiento y nos diga la edad que tiene el usuario en el momento que se ejecute el script.

calcularEdad1(){
read -p "ingresa el año en que naciste (ejemplo: 1984): " bornDate
actualDate=$(date +"%Y")
yearsOld=$((actualDate - bornDate))
echo "actualmente tienes $yearsOld años"
}

read -p "ingresa tu fecha de nacimiento (ejemplo: 14/05/1984): " bornDate

actualDateInSeconds=$(date +%s)
bornDateInSeconds=$(date -d "$bornDate" "+%d/%m/%Y" +%s)
echo "$bornDateInSeconds"
yearsInSeconds=$((actualDateInSeconds - bornDateInSeconds))

echo "actualDateInSeconds - bornDateInSeconds $yearsInSeconds"
