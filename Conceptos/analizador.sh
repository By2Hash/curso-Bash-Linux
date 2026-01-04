#!/bin/bash

# 1. CAPTURAR ARGUMENTO
# Guardamos el primer texto que escribas después del script en esta variable
LOG_FILE=$1

# 2. VALIDACIÓN 1: ¿El usuario escribió algo?
# -z devuelve "verdadero" si la variable está vacía
if [ -z "$LOG_FILE" ]; then
    echo "❌ Error: Olvidaste indicar el archivo."
    echo "Ejecútalo así: ./analizador.sh server.log"
    exit 1  # 'exit 1' mata el script aquí. Ya no sigue bajando.
fi

# 3. VALIDACIÓN 2: ¿El archivo existe?
# -f devuelve "verdadero" si es un archivo real
if [ ! -f "$LOG_FILE" ]; then
    echo "❌ Error: El archivo '$LOG_FILE' no existe en esta carpeta."
    exit 1
fi

clear
echo "--- INICIANDO ANÁLISIS FORENSE ---"
echo "Analizando archivo objetivo: $LOG_FILE"
echo "----------------------------------"

# 4. PROCESO PRINCIPAL
echo "Visualizando amenazas:"
# Leemos el archivo -> Filtramos solo lo que diga ERROR
cat $LOG_FILE | grep "ERROR"

echo "----------------------------------"

# 5. CONTAR (wc -l cuenta las líneas)
NUM_ATAQUES=$(cat $LOG_FILE | grep "ERROR" | wc -l)

echo "RESUMEN: Se detectaron $NUM_ATAQUES ataques."

# 6. EXPORTAR REPORTE
cat $LOG_FILE | grep "ERROR" > reporte_hackers.txt
echo "✅ Reporte guardado en 'reporte_hackers.txt'"