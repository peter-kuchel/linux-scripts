#!/bin/bash

i3-save-tree --workspace 3 > ~/.config/i3/workspace_3.json
sed -i 's|^\(\s*\)// "|\1"|g; /^\s*\/\//d' ~/.config/i3/workspace_3.json
