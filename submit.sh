#!/usr/bin/bash

read -rp 'Digite o número da atividade: ' atv

## Python

printf "\nPython:\n"
time for i in {01..10}
    do

    python3 Lab"$atv"/lab"$atv".py <Lab"$atv"/open/arq"$i".in> output.txt
    diff output.txt Lab"$atv"/open/arq"$i".out
    DIFF=$(diff Lab"$atv"/open/arq"$i".out output.txt) 
        if [ "$DIFF" == "" ] 
        then
            echo "Teste $i: resultado correto"
        else
            echo "  "
            echo "Teste $i: resultado incorreto"
            echo "  "
            "$(colordiff output.txt Lab"$atv"/open/arq"$i".out)"
        fi
    done
    
# Fortran

printf "\n\nFortran:\n"

time for i in {01..10}
    do
    ./Lab"$atv"/lab"$atv" <Lab"$atv"/open/arq"$i".in> output.txt
    diff -wb output.txt Lab"$atv"/open/arq"$i".out
    DIFF=$(diff -wb output.txt Lab"$atv"/open/arq"$i".out) 
        if [ "$DIFF" == "" ] 
        then
            echo "Teste $i: resultado correto"
        else
            echo "  "
            echo "Teste $i: resultado incorreto"
            echo "  "
            "$(colordiff -wb output.txt Lab"$atv"/open/arq"$i".out)"
        fi
    done


