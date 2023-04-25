#!/bin/bash

if [ "$1" = "--dane" ]; then
    echo "Dzisiejsza data: $(date +%Y-%m-%d)"
    exit 0
fi

if [ "$1" = "--logs" ]; then
    for ((i=1; i<=100; i++))
    do
    plik="log$i.txt"
    echo "Nazwa pliku: $plik" > $plik
    echo "Nazwa skryptu: $0" >> $plik
    echo "Data utworzenia: $(date)" >> $plik
    done
    exit 0
fi