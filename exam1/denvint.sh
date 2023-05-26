# Ruta de la carpeta donde se encuentran los archivos .csv
carpeta="./data/denvint"

# Nombre del archivo de salida
archivo_salida="denint.csv"

# Cambiar al directorio de la carpeta
cd "$carpeta"

# Redirigir la salida estándar hacia el archivo de salida
> "$archivo_salida"

# Bucle for para recorrer los archivos .csv y guardar los resultados en el archivo de salida
for i in *.csv; do
  echo "Archivo: $i"
  echo "Filas:"
  head -n1 "$i" | grep -o "," | wc -l
  echo "Columnas:"
  awk -F"," '{print NF}' "$i" | sort -nu | tail -n1
  echo "-----------------------------"
done >> "$archivo_salida"
