#!/bin/sh
# Оборачивает planner.html (тело артефакта) в самостоятельную страницу index.html.
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="ru">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width,initial-scale=1">\n'
  printf '<style>body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
  cat planner.html
  printf '\n</head>\n<body></body>\n</html>\n'
} > index.html
echo "index.html собран"
