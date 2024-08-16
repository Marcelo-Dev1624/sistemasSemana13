#!/bin/bash

pares=0
impares=0
numeros=()

while true; do
  read -p "Por favor, ingrese un numero (o ; para finalizar): " input
  if [ "$input" = ";" ]; then
    break
  fi
  if [[ $input =~ ^[0-9]+$ ]]; then
    if [ $((input % 2)) -eq 0 ]; then
      pares=$((pares + 1))
    else
      impares=$((impares + 1))
    fi
    numeros+=("$input")
  else
    echo "Por favor, ingrese un numero valido"
  fi
done

echo "Gracias por utilizar el programa"
echo "La cantidad de numeros pares introducidos es: $pares"
echo "La cantidad de numeros impares introducidos es: $impares"