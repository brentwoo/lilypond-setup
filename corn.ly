\version "2.18.2"
\language "english"
upper = \relative c'' {
  \clef treble
  \key d \minor
  \time 4/4

  \partial 4 r
  <<
  { g'4( f d) f8( d g4 f d8) f( e f d4 c a) c8( a d4 c d) c8( a)}
  \\
  { <d bf>4 <c a> <bf g> <c a> <d bf> <c a> <bf g>2 }
  >>  
  <d, g bf d>2. <d g bf d>4

  d' c a c8 a d4. f8 d4 c8( a) d4.( c8 d2)
}

lower = \relative c {
  \clef bass
  \key d \minor
  \time 4/4

  \partial 4
  <<
  {{ d'4~ d2. d4~ d1 a2. a4~ a2. a4 }}
  \\
  {{ r4 g1 g2. bf4 d,1 d2. a4 }}
  >>
  <g d' bf'>2. <g d' bf'>4
}


\header {
  title = "Corn field"
  composer = "S.V. Rachmaninoff"
  arranged = "Harp arr. B. Woo"
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Harp  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
