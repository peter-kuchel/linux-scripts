#!/bin/bash

if [ $# -ne 2 ]; then
	printf "[Usage]: <window num> <name of workspace>\n"
	exit 1
fi 
SAVE_FILE=~/.config/i3/ws_$2.json
echo "save file is $SAVE_FILE"
i3-save-tree --workspace $1 > $SAVE_FILE
#tr -d '\n' < $SAVE_FILE > $SAVE_FILE
sed -i 's|^\(\s*\)// "|\1"|g; /^\s*\/\//d' $SAVE_FILE
sed -i 's/[\s]*\"machine[^\n]*//g ; s/"title":[^\n]*//g' $SAVE_FILE
sed -i 's/\(\"instance[^,]*\),/\1/' $SAVE_FILE
