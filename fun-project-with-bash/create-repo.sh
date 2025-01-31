#!/bin/bash

echo "Welcome to CreateRepo.sh"
echo "========================"

see_git() {
    if [ -d .git ]; then
    echo "REPOSITORY INI TERINSTALASI GIT"
    else
    echo "REPOSITORY TIDAK TERINSTALASI GIT"
    fi
}

show_menu() {
    echo -e "1. Buat Repo Baru \n2. Check Apakah ada Git Terinisialisasi di folder ini\n"
    echo -n "Masukkan Apa yang ingin dipilih: "
    read input

    if [ "$input" -eq 1 ]; then
    echo -n "Masukkan Remote Repo Git anda: "
    read remote

    git init
    git add .
    git commit -m "Initial Commit"
    git branch -M main
    git remote add origin "$remote"
    git push -u origin main

    echo "Selesai Membuat Repo!"
    
    elif [ "$input" -eq 2 ]; then
    see_git
    fi
}

show_menu