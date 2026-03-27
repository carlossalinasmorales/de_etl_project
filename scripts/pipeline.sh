#!usr/bin/env bash

cd ..
set -euo pipefail
TOKEN_CURSO="FAE_Usach"


wget https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv -p ~/data/raw/ 2>> logs/error.log

echo "Reporte generado por: $USER el $(date) - Token: $TOKEN_CURSO" > output/class_count.txt

tail -n +2 data/raw/titanic.csv | cut -d',' -f3 | sort | uniq -c | sort -nr >> output/class_count.txt

