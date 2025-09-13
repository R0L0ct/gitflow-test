#!/bin/bash
# Crear y trabajar en una feature
# Uso: gf-feature start nombre  | gf-feature finish nombre

ACTION=$1
NAME=$2

if [ "$ACTION" == "start" ]; then
    echo "🌱 Creando feature: $NAME"
    git-flow feature start "$NAME"
elif [ "$ACTION" == "finish" ]; then
    echo "✅ Finalizando feature: $NAME"
    git-flow feature finish -p "$NAME"
else
    echo "Uso: gf-feature {start|finish} nombre"
fi

