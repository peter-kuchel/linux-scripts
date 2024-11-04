#!/bin/bash

# restore workspace for working on skillissue
i3-msg "workspace 3; append_layout ~/.config/i3/workspace_3.json"
(kitty -d ~/skillissue &)
(kitty -d ~/skillissue &)
(kitty -d ~/skillissue &)

# retore workspace for firefox
# i3-msg "workspace 2; append ~/.config/i3/workspace_ff.json"


# restore workspace for general ( first workspace )
# i3-msg "workspace 1; append ~/config/i3/workspace_gen.json" 
