#(set-default-paper-size "letter")


\version "2.18.2"
\language "english"

\header {
  title = "Prelude II"
  composer = "dude from reddit"
  arranged = "BW"
}

\markup {
  \override #'(line-width . 80)
  \justify{
  \bold {Modéré}
}
}

melody =  \relative {
    \clef "treble_8" \key f \major \time 2/4 
<<
{ 
  r16 g d' g,( g) a bf-1-2 c\3 
  a4.-1-4-2 a8 
  c-3-0-1 bf16-4 a g8 f 
  e2
  }\\
{
  r2 fs4( f) d4 b}\\
{ 
  \stemDown
  <bf d>4. c8 f,2 g c2
}
>>

<<
{r16 g' d' g,( g) a bf c\3 a4. a8 c-3-0-1 bf16 a g8 bf a2}\\
{r2 fs4( f)}\\
{ 
  \stemDown
  <bf, d>4. c8 f,2 <g d'>4. <c e>8 <c f,>2
}
>>

<<
  \override NoteHead.style = #'harmonic-mixed
{r8^\markup { \italic \fontsize #-2 "VI" } d'4\3-2 g,8\3-0      
 r8^\markup { \italic \fontsize #-2 "IV" } c4\3-2 f8\2-4 
 r8^\markup { \italic \fontsize #-2 "III" } c4 f,8 
\textSpannerUp
\override TextSpanner.bound-details.left.text = #"I"
 r8\startTextSpan bf4-3 f'8\stopTextSpan}\\
{<c,\6-3 ef\5-1>2 
 <bf df>
 <c-1 af-2>4. b8
 bf2
 }     
>>
<<
  \revert NoteHead.style
{ 
\textSpannerUp
\override TextSpanner.bound-details.left.text = #"III"
  r16\startTextSpan f' c'\3-4 f,( f) g\4-3 af-4 bf\stopTextSpan 
  g4. g8 
  bf8\startTextSpan af16\4-4 g-3 f8 ef\5-4\stopTextSpan
  <d\5>2
  }\\
{
  r2 e'4\2( ef)
  }\\
{
  \stemDown
  <af,,\6-2 c\5>4. df8 
  ef2 
  <f c>4 a,4\6-3 
  <bf\6>2
}
>>
<<
{ 
\textSpannerUp
\override TextSpanner.bound-details.left.text = #"III"
  r16\startTextSpan f' c' f,( f) g af bf\stopTextSpan 
  g4. g8 
  bf8\startTextSpan af16\4-4 g-3 f8\stopTextSpan af\4
  g4 r16 fs c'\3 f,(
  f2)
  }\\
{
  r2 e'4\2( ef)
  }\\
{
  \stemDown
  <af,, c>4. df8 
  ef2 
  <f c>4. d8\5 
  ef8\5-4 df c4(
  c2)
}
>>
<<
{ 
  r16 g' d' g,( g) a bf-1-2 c\3 
  a4.-1-4-2 a8 
  c-3-0-1 bf16-4 a g8. f16 
  f2
  }\\
{
  r2 fs4( f) d4 cs}\\
{ 
  \stemDown
  <bf d>4. c8 f,2 g c2
}
>>
<<
{ 
\textSpannerUp
\override TextSpanner.bound-details.left.text = #"I"
  f8\startTextSpan e ef df
  c2\stopTextSpan
  }\\
{ 
  \stemDown
  f,2( f2)}
>>
\bar "|."
}

\score {
  \new Staff \melody
  \layout { 
  indent = #0
  ragged-right = ##f
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
    }
}
  \midi { }
}
