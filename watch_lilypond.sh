#!/bin/bash
fswatch -0 -event ./$1.ly | xargs -0 -n 1 -I {} lilypond $1.ly
