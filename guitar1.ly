#(set-default-paper-size "letter")


\version "2.18.2"
\language "english"

\header {
  title = "Guitar trainer - Grade 1 exerpts"
  composer = ""
  arranged = "geetar"
}

\markup {
  \override #'(line-width . 80)
  \justify{
  \bold {Grade one stuff}. This is a collection of tricky passages I found while going through introductory methods for classical guitar. I found this pattern where pieces will usually work established technique pretty well, then throw in a bar or two of tricky or awkward new technique. But the rest of the piece doesn't give you a lot of chances to practice the tricky changes. I'm extracting them here, and ultimately I want to write some exercises that work out these exact tricky parts.
}
}
\markup {
  \bold {Grade one stuff}. This is material from grade one, sure.
}

melody =  \relative {
    \clef "treble_8"
    \key c \major
    \time 3/4
c'4 b a gs\3-1 fs gs a2. a2 r4 \bar "||" \break
}

\score {
  \new Staff \melody
  \layout { 
  ragged-right = ##t
}
  \midi { }
}

\markup {
  \bold {Grade one stuff}. This is material from grade one, sure.
}

bach =  \relative {
    \clef "treble_8"
    \key c \major
    \time 3/4
c'4 d8 c b a b4 c8 b a g fs4 g8 a b g b4 a2 \bar "||" \break
}

\score {
  \new Staff \bach
  \layout { 
  ragged-right = ##t
}
  \midi { }
}

\markup {
  \bold {Hall of king}. This is material from grade one, sure.
}

hall =  \relative {
    \clef "treble_8"
    \key c \major
    \time 4/4
a8 b c d e c e4 ds8\2 b\3 ds4 d8 bf d4 \bar "||" \break
}

\score {
  \new Staff \hall
  \layout { 
  ragged-right = ##t
}
  \midi { }
}

\markup {
  \bold {Jesu}. This is material from grade one, sure.
}

jesu =  \relative {
    \clef "treble_8"
    \key g \major
    \time 9/8
fs8 g a d, fs a c b a  \bar "||" e d' c   \break
}

\score {
  \new Staff \jesu
  \layout { 
  ragged-right = ##t
}
  \midi { }
}
melodyb = \relative {
    \clef "treble_8"
    \key c \major
    \time 3/4

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

\score {
  \new Staff \melodyb
  \layout { 
  ragged-right = ##t
}
  \midi { }
}
