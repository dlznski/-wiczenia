#!/bin/bash

function uzyj {
    echo "Użycie: $0 [OPCJA] [ARGUMENT] "
    echo "Opcje:"
<<<<<<< HEAD
    echo " '--date', '-d' Wyświetla aktulną date"
    echo " '--logs', '-l' Utwórz 100 plików log z datą i nazwą skryptu"
    echo " '--logs30', '-l30' [liczba] Utwórz pliki log z datą i nazwą skryptu"
    echo " '--init, -i' Klonuj repozytorium i ustaw PATH"
     echo "  --error30, -e30 [liczba] Utwórz pliki error z numerem i datą"
    echo " '--help', '-h' Wyświetl dostępne opcje"
=======
    echo "  '--date', '-d'  Wyświetla aktulną date"
    echo "  '--logs', '-l' Utwórz 100 plików log z datą i nazwą skryptu"
    echo "  '--logs30', '-l30'  Utwórz pliki log z datą i nazwą skryptu"
    echo "  '--help', '-h' Wyświetl dostępne opcje"
>>>>>>> help
}

if [ "$1" = "--date" ] || [ "$1" = "-d" ]; then
    echo "Dzisiejsza data: $(date +%Y-%m-%d)"
<<<<<<< HEAD
=======
    exit 0
>>>>>>> help
fi

if [ "$1" = "--logs" ] || [ "$1" = "-l" ]; then
    for ((i=1; i<=100; i++))
    do
    plik="log$i.txt"
    echo "Nazwa pliku: $plik" > $plik
    echo "Nazwa skryptu: $0" >> $plik
    echo "Data utworzenia: $(date)" >> $plik
    done
<<<<<<< HEAD
=======
    exit 0
>>>>>>> help
fi

if [ "$1" = "--logs30" ] || [ "$1" = "-l30" ]; then
    if [ "$2" -gt 0 ] 2>/dev/null; then
        ilosc_log=$2
    else
        ilosc_log=30
    fi

    for ((i=1; i<=ilosc_log; i++))
    do
        plik="log$i.txt"
        echo "Nazwa pliku: $plik" > $plik
        echo "Nazwa skryptu: $0" >> $plik
        echo "Data utworzenia: $(date)" >> $plik
    done
<<<<<<< HEAD
fi

if [ "$1" = "--init" ]; then
    git clone https://github.com/dlznski/cwiczenia.git
    export PATH=$PATH:$(pwd)/cwiczenia
    echo "Repozytorium zostało sklonowane i ścieżka została dodana do zmiennej PATH"
fi

if [ "$1" = "--error" ] || [ "$1" = "-e30" ]; then
    if [ "$2" -gt 0 ] 2>/dev/null; then
        ilosc_error=$2
    else
        ilosc_error=100
    fi

    for ((i=1; i<=ilosc_error; i++))
    do
    plik="error$i.txt"
        echo "Nazwa pliku: $plik" > $plik
        echo "Data utworzenia: $(date)" >> $plik
    done
=======

    exit 0
>>>>>>> help
fi

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    uzyj
<<<<<<< HEAD
=======
    exit 0
>>>>>>> help
fi

echo "Nieznana opcja. Użyj --help, aby wyświetlić dostępne opcje."
exit 1