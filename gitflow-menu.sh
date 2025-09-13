#!/bin/bash

# Menú interactivo para git-flow
# Requiere: git, git-flow, fzf (opcional para mejor selección)

show_menu() {
    echo "==============================="
    echo "   🚀 Git-Flow Menu"
    echo "==============================="
    echo "1) Iniciar git-flow"
    echo "2) Feature"
    echo "3) Release"
    echo "4) Hotfix"
    echo "5) Salir"
    echo "==============================="
}

feature_menu() {
    echo "---- Feature ----"
    echo "1) Start"
    echo "2) Finish"
    echo "3) Cancelar"
    read -p "Selecciona opción: " opt
    case $opt in
        1) read -p "Nombre de la feature: " name
           git-flow feature start "$name";;
        2) read -p "Nombre de la feature a finalizar: " name
           git-flow feature finish -p "$name";;
        *) echo "Cancelado";;
    esac
}

release_menu() {
    echo "---- Release ----"
    echo "1) Start"
    echo "2) Finish"
    echo "3) Cancelar"
    read -p "Selecciona opción: " opt
    case $opt in
        1) read -p "Versión del release: " ver
           git-flow release start "$ver";;
        2) read -p "Versión del release a finalizar: " ver
           git-flow release finish -p "$ver";;
        *) echo "Cancelado";;
    esac
}

hotfix_menu() {
    echo "---- Hotfix ----"
    echo "1) Start"
    echo "2) Finish"
    echo "3) Cancelar"
    read -p "Selecciona opción: " opt
    case $opt in
        1) read -p "Nombre del hotfix: " name
           git-flow hotfix start "$name";;
        2) read -p "Nombre del hotfix a finalizar: " name
           git-flow hotfix finish -p "$name";;
        *) echo "Cancelado";;
    esac
}

while true; do
    show_menu
    read -p "Elige una opción: " choice
    case $choice in
        1) git-flow init -d ;;
        2) feature_menu ;;
        3) release_menu ;;
        4) hotfix_menu ;;
        5) echo "👋 Saliendo..."; exit 0 ;;
        *) echo "Opción inválida" ;;
    esac
done

