#!/bin/sh

file="src/bypass.sh"
if [ -n "$AFS_DIR" ]; then
    dir="$AFS_DIR/bin"
else
    dir="$HOME/.local/bin"
fi
mkdir -p "$dir"
cp "$file" "$dir"

"$file"
