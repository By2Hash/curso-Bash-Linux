#!/bin/bash

# --- ZONA DE FUNCIONES ---

# Función 1: Muestra tu dirección IP privada y pública
ver_red() {
    echo ""
    echo "--- INFORMACIÓN DE RED ---"
    echo "Tu IP local es:"
    hostname -I
    echo "--------------------------"
}

# Función 2: Busca archivos que pesen más de 100MB (Simulado)
buscar_pesados() {
    echo ""
    echo "--- BUSCANDO ARCHIVOS GIGANTES ---"
    echo "Escaneando carpeta actual..."
    sleep 1
    # 'du' calcula espacio, 'sort' ordena
    # Esto busca archivos en tu carpeta actual (.)
    du -ah . | sort -rh | head -n 5
    echo "----------------------------------"
}

# Función 3: El menú principal
mostrar_menu() {
    clear
    echo "================================="
    echo "   HACKER TOOLBOX V1.0           "
    echo "================================="
    echo "1. Ver mi información de Red"
    echo "2. Detectar archivos pesados"
    echo "3. Salir del sistema"
    echo "================================="
}

# --- BUCLE PRINCIPAL (MAIN LOOP) ---
# Aquí empieza la ejecución real

while true; do
    mostrar_menu
    read -p "Selecciona una opción [1-3]: " opcion

    # Usamos 'case' que es como un IF pero más limpio para menús
    case $opcion in
        1)
            ver_red
            read -p "Presiona Enter para volver..." # Pausa
            ;;
        2)
            buscar_pesados
            read -p "Presiona Enter para volver..."
            ;;
        3)
            echo "Cerrando sesión... ¡Adiós!"
            break # Rompe el bucle while y termina
            ;;
        *)
            echo "❌ Opción no válida."
            sleep 1
            ;;
    esac
done