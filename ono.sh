#!/bin/bash

# ono.sh - zobrazi aktualni cenu benzinu na stojanech cerpacich stanic retezce ONO Tank
#

CENIK_URL='http://m.tank-ono.cz/cz/index.php?page=cenik'
DESETINNY_ODDELOVAC='.'

CENA_BENZIN=$(curl -s $CENIK_URL | grep 'NATURAL 95' -A2 | grep divprice | cut -d '>' -f2- | cut -d '<' -f-2 | sed -e 's/<sup>/'$DESETINNY_ODDELOVAC'/' | tr -d '[:space:]')

echo $CENA_BENZIN

