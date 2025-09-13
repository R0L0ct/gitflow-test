#!/bin/bash
# Manejo de releases
# Uso: gf-release start 1.0.0 | gf-release finish 1.0.0

ACTION=$1
VERSION=$2

if [ "$ACTION" == "start" ]; then
    echo "📦 Iniciando release: $VERSION"
    git-flow release start "$VERSION"
elif [ "$ACTION" == "finish" ]; then
    echo "🚀 Publicando release: $VERSION"
    git-flow release finish -p "$VERSION"
else
    echo "Uso: gf-release {start|finish} version"
fi

