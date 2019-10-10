#!/bin/bash
fswatch -0 -event ./corn.ly | xargs -0 -n 1 -I {} lilypond corn.ly
