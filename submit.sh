#!/usr/bin/bash

read -p 'Digite o número da atividade: ' atv

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