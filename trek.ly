\version "2.18.2"
\language "english"
upper = \relative {
  \clef "treble_8"
  \key c \major
  \time 4/4

  \partial 4 r
  << 
  { g2 f' f4 e d c b}  
  \\
  { \tuplet 3/2 { 16 r g, d b' e g } }
  >>

  <<
  { g4( f d) f8( d g4 f d8) f( e f d4 c a) c8( a d4 c d) c8( a)}
  \\
  { <d bf>4 <c a> <bf g> <c a> <d bf> <c a> <bf g>2 }
  >>  
  <d, g bf d>2. <d g bf d>4

  d' c a c8 a d4. f8 d4 c8( a) d4.( c8 d2) a c a

b16 d g b e
\textSpannerUp
\override TextSpanner.bound-details.left.text = #"XII "
g16\startTextSpan
b16 e g e b g\stopTextSpan
e16 b g d

}

\header {
  title = "estrella trek"
  composer = ""
  arranged = "geetar"
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Guitar "
    \new Staff = "upper" \upper
  >>
  \layout { }
  \midi { }
}
