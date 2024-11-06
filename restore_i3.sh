#!/bin/bash

# $1 is which workspace window to assign to
# which worksspace layout to use
WORKSPACE_FILE="ws_$2.json"

if [! -f $WORKSPACE_FILE ]; then
	printf "workspace name was not valid\n"	
	exit 1
fi	

i3-msg "workspace $1; append_layout ~/.config/i3/$WORKSPACE_FILE"

case $2 in 
	"sk")			
		
		(kitty -d ~/skillissue &)
		(kitty -d ~/skillissue &)
		(kitty -d ~/skillissue &) ;;	
	"ff")
		(kitty firefox &);;
	*)
		echo "workspace not recognized" ;;
esac

# retore workspace for firefox
# i3-msg "workspace 2; append ~/.config/i3/workspace_ff.json"


# restore workspace for general ( first workspace )
# i3-msg "workspace 1; append ~/config/i3/workspace_gen.json" 
#
