#!/bin/bash

DIR="$HOME/linux_scripts"

BANNER="$DIR/banner.log"
BANNER2="$DIR/banner2.log"
TODOS="$DIR/todo.log"
QUOTES="$DIR/quotes.log"

readarray -t arr < $QUOTES
QUOTE_SEL=$(($RANDOM % ${#arr[@]}))

if [ ! -f $BANNER ]; then
	printf ""	
else
	cat $BANNER
fi

if [ ! -f $TODOS ]; then 
	printf ""
else 
	cat $TODOS
fi 

if [ -f $BANNER2 ]; then
	printf "\n"
	cat $BANNER2
	printf "\n"
fi	

echo ${arr[$QUOTE_SEL]} | cowsay




