#!/bin/sh
set -e

# If no arguments, run prettier on all supported files
if [ $# -eq 0 ]; then
    exec prettier --write "**/*.{js,jsx,ts,tsx,html,css,scss,json,md,yaml,yml}"
else
    exec prettier "$@"
fi
