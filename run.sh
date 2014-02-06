#!/bin/sh

fonts=("TeX" "STIX-Web" "Asana-Math" "Neo-Euler" "Gyre-Pagella" "Gyre-Termes" "Latin-Modern");

for (( i = 0 ; i < ${#fonts[@]}; i++ )) do
nohup phantomjs main.js --port 1600$i --bench index_${fonts[$i]}.html 1>process_${fonts[$i]}.log 2>&1 &
done;
