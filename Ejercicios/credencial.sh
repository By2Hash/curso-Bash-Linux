#!/bin/bash
clear

read -p "Nombre Completo: " user_name
read -p "Edad: " user_age
read -p "Puesto de trabajo: " user_job


echo ""
echo "--- Recopilando datos... ---"  # <--- NUEVO: Mensaje de espera
sleep 1

echo "--- Generando ID en la base de datos... ---" # <--- NUEVO
sleep 2                             # <--- NUEVO: Espera 2 segundos más

clear

echo "=============================="
echo "      Credencial Oficial      "
echo "=============================="
echo "Nombre Completo: $user_name"
echo "Edad: $user_age"
echo "Puesto de Trabjao: $user_job"
echo "=============================="


