#!/bin/bash
clear
echo "======================================"
echo "      SCANNER DE RED V1.0             "
echo "======================================"


read -p "Introduce el prefijo de red (ej: 192.168.0): " prefijo

echo ""
echo "[*] Iniciando barrido en $prefijo"
sleep 1

for ip in {1..10} 
do
    target="$prefijo.$ip"

    echo -n "Escaneando $target... "
    sleep 0.2

    if [ "$ip" -eq 4 ]; then
        echo "[ABIERTO] -> ¡Encontrado!"
        echo " -> Iniciando protocolo de acceso..."
        sleep 1
    else
        echo "[CERRADO]"
    fi
done

echo ""
echo "--- Escaneo Finalizado ---"