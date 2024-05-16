
#variables
#!/bin/bash
echo "el nombre de mi gato es pepe"
sleep 3
nombreGato="pepe"
echo "el nombre de mi gato es $nombreGato"

#condicionales

read -p "que color de coche quieres?. Escriba la respuesta: " colorCoche
rojo=ferrari
amarillo=fiat

if [ "$colorCoche" = "rojo" ]; then
    echo "su coche sera $rojo"
else 
    echo "su coche sera $amarillo"
fi


#bucles

for nmeroVuelta in {1. .5}
do 
    echo "Hello $numeroVuelta"
done

contador=0
termina=10

while [$termina -ge $contador]
do 
    echo $contador
    let contador=$contador+1
done

#funciones
imprimirSaludo(){
    echo Hola Mundo
}
imprimirSaludo

crearArchivo(){
read -p "ingrese nombre y formato de archivo que quiere agregar: " nombreArchivo
listaArchivos=$(ls)

crearArchivo=$(touch $nombreArchivo)
echo "$listaArchivos"
}
crearArchivo