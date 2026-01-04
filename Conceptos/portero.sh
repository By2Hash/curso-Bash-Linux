#!/bin/bash
clear
echo "---Control de Acceso---"
read -p "¿Cual es tu edad?: " edad

echo "Verificando documento..."
sleep 2

if [ "$edad" -ge 18 ]; then
    echo "Adelante, puedes pasar"
else
    echo "Lo siento, eres menor de edad"
fi