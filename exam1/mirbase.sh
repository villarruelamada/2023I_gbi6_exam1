# Ruta del subdirectorio
subdirectorio="/c/Users/AMADA/Desktop/Bioinformatica 2023/2023I_gbi6_exam1/exam1/data"

# Cambiar al subdirectorio
cd "$subdirectorio"

# Ejecutar los comandos grep en el subdirectorio
echo "Número de articulos hasta la fecha:" $(grep -c "PUBMED" miRNA.dat)
echo "Número de estudios en Nature:" $(grep -c "Nature" miRNA.dat)
echo "Número de organismo elegans usado:" $(grep -c "elegans" miRNA.dat)
echo "Número de micro RNA estudiados:" $(grep -c "139 BP" miRNA.dat)
