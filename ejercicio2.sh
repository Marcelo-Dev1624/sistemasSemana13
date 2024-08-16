#!/bin/bash

# Solicita al usuario que ingrese una contraseña
read -p "Por favor, ingrese una contraseña: " password

# Verifica si la contraseña tiene al menos 8 caracteres
if [[ ${#password} -ge 8 ]]; then
    # Verifica si la contraseña contiene al menos un número, una letra mayúscula y una letra minúscula
    if [[ "$password" =~ [0-9] ]] && [[ "$password" =~ [A-Z] ]] && [[ "$password" =~ [a-z] ]]; then
        echo "Contraseña válida"
    else
        echo "Contraseña inválida: Debe contener al menos un número, una letra mayúscula y una letra minúscula."
    fi
else
    echo "Contraseña inválida: Debe tener al menos 8 caracteres."
fi