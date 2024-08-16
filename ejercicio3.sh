#!/bin/bash

# Solicita al usuario que ingrese un número
read -p "Por favor, ingrese un número positivo mayor que cero: " numero

# Verifica que el número sea positivo y mayor que cero
if [[ $numero -gt 0 ]]; then
    factorial=1
    # Calcula el factorial usando un bucle
    for (( i=1; i<=numero; i++ ))
    do
        factorial=$((factorial * i))
    done
    echo "El factorial de $numero es $factorial."
else
    echo "Número inválido: Debe ser un número positivo mayor que cero."
fi