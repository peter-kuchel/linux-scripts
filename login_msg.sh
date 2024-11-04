#!/bin/bash

DIR="$HOME/linux_scripts"

BANNER="$DIR/banner.log"
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

echo ${arr[$QUOTE_SEL]} | cowsay




