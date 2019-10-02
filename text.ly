\version "2.18.2"
upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  a4 b' cis d ees f
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  a2 c e
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
