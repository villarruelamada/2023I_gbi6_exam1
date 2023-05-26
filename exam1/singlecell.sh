
singlecell="/c/Users/AMADA/Desktop/Bioinformatica 2023/2023I_gbi6_exam1/exam1/data"

ls -R "$singlecell" | grep -o -E '\.[a-zA-Z0-9]+$' | uniq -c > extensiones.txt




