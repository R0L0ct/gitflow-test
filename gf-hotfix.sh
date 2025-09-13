#!/bin/bash
# Manejo de hotfix
# Uso: gf-hotfix start nombre | gf-hotfix finish nombre

ACTION=$1
NAME=$2

if [ "$ACTION" == "start" ]; then
    echo "🔥 Iniciando hotfix: $NAME"
    git-flow hotfix start "$NAME"
elif [ "$ACTION" == "finish" ]; then
    echo "🛠️ Finalizando hotfix: $NAME"
    git-flow hotfix finish -p "$NAME"
else
    echo "Uso: gf-hotfix {start|finish} nombre"
fi

