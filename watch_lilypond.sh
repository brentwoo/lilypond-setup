#!/bin/bash
fswatch -0 -event ./text.ly | xargs -0 -n 1 -I {} lilypond text.ly
