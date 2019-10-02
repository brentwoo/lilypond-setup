# This is my setup for Lilypond

* Requirements, install using Homebrew:
  * fswatch - monitors for files changes and runs a command
  * timidity - plays midi files in command line

* `watch_lilypond.sh` - is a one line command invoking fswatch. fswatch watches whenever you save the file, then runs lilypad on it to compile the pdf. I guess this could be risky because if you break the file there's no version control per se, but maybe before starting this script you should backup the working files. Or maybe I could do that automatically.

* timidity command
  * `$ timidity file.midi`
  * plays the midi file in command line. awesome!
