#!/bin/bash

# $1 is which workspace window to assign to
# which worksspace layout to use
WORKSPACE_FILE="ws_$2.json"

if [! -f $WORKSPACE_FILE ]; then
	printf "workspace name was not valid\n"	
	exit 1
fi	

i3-msg "workspace $1; append_layout ~/.config/i3/$WORKSPACE_FILE"

# switch on workspace, and then reload the terminals + programs that are needed
case $2 in 
	
	"sk"|"sk2")			
		
		(kitty -d ~/skillissue &)
		(kitty -d ~/skillissue &)
		(kitty -d ~/skillissue &);;&
	"sk2")
		(kitty -d ~/skillissue &);;
	"ff")
		(kitty firefox &);;
	*)
		echo "workspace not recognized" ;;
esac
