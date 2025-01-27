#!/bin/bash

MUSIC_DIR="./music"

ASCII_ART_FILE="./ascii_art.txt"

COLOR_RESET="\033[0m"
COLOR_CYAN="\033[36m"
COLOR_GREEN="\033[32m"
COLOR_YELLOW="\033[33m"
COLOR_MAGENTA="\033[35m"
BOLD="\033[1m"

songs=()
for file in "$MUSIC_DIR"/*; do
    if [[ -f "$file" ]]; then
        songs+=("$(basename "$file")")
    fi
done

welcome_message() {
    if [[ -f "$ASCII_ART_FILE" ]]; then
        echo -e "${COLOR_CYAN}$(cat "$ASCII_ART_FILE")${COLOR_RESET}"
    fi
    echo -e "\n${COLOR_GREEN}${BOLD}Welcome to Musica CLI.${COLOR_RESET}"
}

list_songs() {
    echo -e "\n${COLOR_YELLOW}Available Songs:${COLOR_RESET}"
    for i in "${!songs[@]}"; do
        echo -e "$((i+1)). ${COLOR_MAGENTA}${songs[$i]}${COLOR_RESET}"
    done
    echo -e "\n"
}

play_song() {
    list_songs
    read -p "Enter the number of the song you want to play: " choice

    if [[ $choice -lt 1 || $choice -gt ${#songs[@]} ]]; then
        echo -e "\nInvalid choice! Please try again.\n"
        return
    fi

    song="${songs[$((choice-1))]}"
    echo -e "\n${BOLD}Now playing: ${COLOR_MAGENTA}$song${COLOR_RESET}"
    mplayer "$MUSIC_DIR/$song"
}

main_menu() {
    while true; do
        echo -e "\n1. View Available Songs"
        echo -e "2. Play a Song"
        echo -e "3. Exit"
        read -p "Your choice: " choice

        case $choice in
            1)
                list_songs
                ;;
            2)
                play_song
                ;;
            3)
                echo -e "\nThank you for using MusicaCLI! Goodbye!\n"
                exit 0
                ;;
            *)
                echo -e "\nInvalid choice! Please try again.\n"
                ;;
        esac
    done
}

welcome_message
main_menu