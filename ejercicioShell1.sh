#VARIABLES: ejercicio 1. Escribir el siguiente texto con variables:

nombre="Marta"
edad=39
ciudad="Sevilla"

echo "Mi nombre es $nombre tengo $edad años y vivo en $ciudad"

#VARIABLES: ejercicio 2.  -Escribir el siguiente texto pero con inputs por consola:

read -p "¿Cual es tu actividad favorita?. Escribe la respuesta: " actividad

read -p "¿Cual es tu comida favorita?. Escribe la respuesta: " comida

echo “Mi actividad favorita es $actividad. Mi comida favorita es $comida”

#PARAMETROS (argumentos posicionales): ejercicio 1. Pasar tres parámetros e imprime el que está en la posición 1 y 3
echo "el primer parametro es $1"
echo "el tercer parametro es $3"


#PARAMETROS (argumentos posicionales): ejercicio 2. -Completar la siguiente frase:
#“En el fichero ” <aquí va el nombre del fichero> “existen” <aquí va la cantidad de parámetros>
#echo "en el fichero $()

#CONDICIONALES: ejercicio 1
id=$(id)

if [ "$id" != "root" ]; then
   echo "No tiene acceso como root"
fi

#CONDICIONALES: ejercicio 2. Escribir un scripts que compare dos inputs (int) y nos de los siguientes mensajes:
read -p "ingresa un numero: " n1
read -p "ingresa otro numero: " n2

if [ "$n1" = "$n2" ]; then
   echo 'Los números ingresados son iguales'
elif [ "$n1" -gt "$n2" ]; then
    echo "$n1 es mayor que $n2"
elif [ "$n1" -lt "$n2" ]; then
    echo "$n2 es mayor que $n1"
fi

#CONDICIONALES: ejercicio 3. Escribir un script que nos diga si el valor ingresado es divisible por 2
read -p "ingresa un numero: " n1
divisor=2
modulo=$((n1 % divisor))
if [ $modulo -eq 0 ]; then
   echo "el valor ingresado es divisible por 2"
else
   echo "el valor ingresado no es divisible por 2"
fi

#SUSTITUCION DE COMANDOS: ejercicio 1. Un script que nos pida la fecha de nacimiento y nos diga la edad que tiene el usuario en el momento que se ejecute el script.

calcularEdad1(){
read -p "ingresa el año en que naciste (ejemplo: 1984): " bornDate
actualDate=$(date +"%Y")
yearsOld=$((actualDate - bornDate))
echo "actualmente tienes $yearsOld años"
}


calcularEdad2(){
read -p "ingresa tu fecha de nacimiento (ejemplo: 14/05/1984): " bornDate
#componentes de la fecha de nacimiento
bDay=$(echo $bornDate | cut -d'/' -f1)
bMonth=$(echo $bornDate | cut -d'/' -f2)
bYear=$(echo $bornDate | cut -d'/' -f3)
bornDateInSeconds=$(date -d "$bYear-$bMonth-$bDay" "+%s")

#componentes de la fecha actual
currentDateInSeconds=$(date "+%s")

#calcular la diferencia entre las fechas 
differenceInSeconds=$((currentDateInSeconds - bornDateInSeconds))

#restar segundos en un año y segundos totales de vida
secondsInAYear=$((365*24*60*60))
yearsOld=$((differenceInSeconds / secondsInAYear))

echo "tienes $yearsOld años"
}

#BUCLES: ejercicio 1.Hacer un script que adivine el PID del script, que nos informe en cada momento si es mayor o menor el número ingresado. Cuando acertemos el número el script termina informandonos los números de intentos
averiguarPid(){
    
pid=$$
echo $pid
contador=0
gameIsOn="true"
while [ "$gameIsOn" = "true" ]; do
    read -p "ingresa un número para averiguar el PID" guessedPid 
        if [ "$pid" = "$guessedPid" ]; then
            echo "acertaste en $contador numero de intentos"
            gameIsOn="false"
        elif [ "$pid" -lt "$guessedPid" ]; then
            echo "tu numero es mayor que el PID"
            let contador=$contador+1

        elif [ "$pid" -gt "$guessedPid" ]; then
            echo "tu numero es menor que el PID"
            let contador=$contador+1
        
        fi
done
}

#BUCLES: ejercicio 2. Hacer un script que:
#Mediante un input podamos agregar un archivo (nos de un mensaje de confirmación)


eliminarArchivo(){
read -p "inserta el nombre de tu archivo. Recuerda incluir la extensión: " fileName
newFile=$(touch $fileName)
echo "has creado correctamente el archivo $fileName"

deleteFile="Y"
while [ "$deleteFile" = "Y" ]; do
#Luego de 3 segundos de espera nos muestre la lista de archivos actual
sleep 3
currentFileList=$(ls)
echo "Estos son los archivos que hay actualmente en esta carpeta: $currentFileList"
#Nos pregunte si deseamos borrar un archivo
read -p "¿quieres borrar algún archivo? Escribe Y o N: " deleteFile

#De ser afirmativo, mediante un input podamos escribir por un lado el nombre del archivo, y por el otro  el formato
if [ $deleteFile = "Y" ]; then
    read -p "inserta el nombre del archivo: " fileNameToDelete
    read -p "inserta el formato del archivo: " fileFormatToDelete

#nos informe si el archivo fue encontrado y que lo borre
    
    fileToDelete="${fileNameToDelete}${fileFormatToDelete}"
    echo "se ha encontrado el archivo $fileToDelete"
    #findFile=$(find . -name $fileToDelete)
    rm "$fileToDelete"
    sleep 3
    echo "se ha eliminado correctamente el archivo $fileToDelete"
#En el caso de que no queramos borrar ningun archivo, nos de un mensaje de “Ok, no borraremos ningún archivo”

else
    echo 'Ok, no borraremos ningún archivo'

fi
done
}
eliminarArchivo