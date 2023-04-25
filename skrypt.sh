#!/bin/bash

function uzyj {
    echo "Użycie: $0 [OPCJA] [ARGUMENT]"
    echo ""
    echo "Opcje:"
    echo "  '--logs' Utwórz pliki log z datą i nazwą skryptu"
    echo "  '--logs30'  Utwórz pliki log z datą i nazwą skryptu"
    echo "  '--date'  Wyświetla aktulną date"
    echo "  '--help'  Wyświetl dostępne opcje"
}

if [ "$1" = "--date" ]; then
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

if [ "$1" = "--logs30" ]; then
    if [ "$2" -gt 0 ] 2>/dev/null; then
        ilosc_log=$2
    else
        echo "Podaj poprawną liczbę plików"
        exit 1
    fi

    for ((i=1; i<=ilosc_log; i++))
    do
        plik="log$i.txt"
        echo "Nazwa pliku: $plik" > $plik
        echo "Nazwa skryptu: $0" >> $plik
        echo "Data utworzenia: $(date)" >> $plik
    done

    exit 0
fi

if [ "$1" = "--help" ]; then
    uzyj
    exit 0
fi

echo "Nieznana opcja. Użyj --help, aby wyświetlić dostępne opcje."
exit 1