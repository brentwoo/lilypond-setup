#!/bin/bash
echo "====================================="
echo "*** Ok! Watching" $1 "****"
echo "====================================="
fswatch -0 -event $1 | xargs -0 -n 1 -I {} lilypond $1
