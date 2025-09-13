## Inicializar en un repo

git flow init

## Trabajar en una feature

git flow feature start nombre
git commit -m "Implemento nueva feature"
git flow feature finish nombre

## Preparar un release

git flow release start 1.0.0
-- commits de ajustes
git flow release finish 1.0.0

## Arreglar un bug en producción

git flow hotfix start fix-bug
git commit -m "Fix bug crítico"
git flow hotfix finish fix-bug
