[top]
components :            boids

[boids]
type :                  cell
width :                 20
height :                20
delay :                 transport
defaultDelayTime :      100
border :                wrapped
neighbors :             boids(-2,-2) boids(-2,-1) boids(-2,0) boids(-2,1) boids(-2,2)
neighbors :             boids(-1,-2) boids(-1,-1) boids(-1,0) boids(-1,1) boids(-1,2)
neighbors :             boids(0,-2)  boids(0,-1)  boids(0,0)  boids(0,1)  boids(0,2)
neighbors :             boids(1,-2)  boids(1,-1)  boids(1,0)  boids(1,1)  boids(1,2)
neighbors :             boids(2,-2)  boids(2,-1)  boids(2,0)  boids(2,1)  boids(2,2)
initialvalue :          0
initialRow : 8          0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0
initialRow : 9          0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0
initialRow : 10         0 0 0 0 0 0 0 0 0 1 1 100016 4100 1 0 0 0 0 0 0
initialRow : 11         1 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 1 1
initialRow : 12         1 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 1 1 8100 1
initialRow : 13         1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 100052 1
initialRow : 14         1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1
initialRow : 15         1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1
localtransition :       fly-rule

[fly-rule]
rule : { 1 +
if(((-2,-2) > 100000),1,0) + if(((-2,-1) > 100000),1,0) + if(((-2,0) > 100000),1,0) + if(((-2,1) > 100000),1,0) + if(((-2,2) > 100000),1,0) +
if(((-1,-2) > 100000),1,0) + if(((-1,-1) > 100000),1,0) + if(((-1,0) > 100000),1,0) + if(((-1,1) > 100000),1,0) + if(((-1,2) > 100000),1,0) +
if(((0,-2) > 100000),1,0)  + if(((0,-1) > 100000),1,0)                              + if(((0,1) > 100000),1,0)  + if(((0,2) > 100000),1,0)  +
if(((1,-2) > 100000),1,0)  + if(((1,-1) > 100000),1,0)  + if(((1,0) > 100000),1,0)  + if(((1,1) > 100000),1,0)  + if(((1,2) > 100000),1,0)  +
if(((2,-2) > 100000),1,0)  + if(((2,-1) > 100000),1,0)  + if(((2,0) > 100000),1,0)  + if(((2,1) > 100000),1,0)  + if(((2,2) > 100000),1,0)
}
{ 90 + trunc((0,0)/10 - 10000) * 10 }
{ (0,0) > 100000 and
 ( ((-1,-1) > 100 and (-1,-1) = 9100) or ((-1,0) > 100 and (-1,0) = 8100) or ((-1,1) > 100 and (-1,1) = 7100) or
   ((0,-1) > 100 and (0,-1) = 6100)                                       or ((0,1) > 100 and (0,1) = 4100)   or
   ((1,-1) > 100 and (1,-1) = 3100)   or ((1,0) > 100 and (1,0) = 2100)   or ((1,1) > 100 and (1,1) = 1100)
 )
}

rule :  { (0,0) }       50      { (0,0) > 100000 }


rule :  { (-1,-1) - 9 + 1 }     { 90 + ((-1,-1) - 9 - 100000 ) }
{ (0,0) = 1100 and
 (
                      (-1,0) > 1000 or (-1,1) > 1000 or
  (0,-1) > 1000                     or (0,1) > 1000  or
  (1,-1) > 1000  or (1,0) > 1000 or (1,1) > 1000
 )
}
rule :  { (-1,0) - 8 + 2 }     { 90 + ((-1,0) - 8 - 100000 ) }
{ (0,0) = 2100 and
(
  (-1,-1) > 1000                    or (-1,1) > 1000 or
  (0,-1) > 1000                     or (0,1) > 1000  or
  (1,-1) > 1000  or (1,0) > 1000 or (1,1) > 1000
 )
}
rule :  { (-1,1) - 7 + 3 }     { 90 + ((-1,1) - 7 - 100000 ) }
{ (0,0) = 3100 and
(
  (-1,-1) > 1000 or (-1,0) > 1000                     or
  (0,-1) > 1000                     or (0,1) > 1000   or
  (1,-1) > 1000  or (1,0) > 1000  or (1,1) > 1000
 )
}
rule :  { (0,-1) - 6 + 4 }     { 90 + ((0,-1) - 6 - 100000 ) }
{ (0,0) = 4100 and
(
  (-1,-1) > 1000 or (-1,0) > 1000 or (-1,1) > 1000
                                      or (0,1) > 1000  or
  (1,-1) > 1000  or (1,0) > 1000  or (1,1) > 1000
 )
}
rule :  { (0,1) - 4 + 6 }     { 90 + ((0,1) - 4 - 100000 ) }
{ (0,0) = 6100 and
(
  (-1,-1) > 1000 or (-1,0) > 1000 or (-1,1) > 1000 or
  (0,-1) > 1000  or
  (1,-1) > 1000  or (1,0) > 1000  or (1,1) > 1000
 )
}
rule :  { (1,-1) - 3 + 7 }     { 90 + ((1,-1) - 3 - 100000 ) }
{ (0,0) = 7100 and
(
  (-1,-1) > 1000 or (-1,0) > 1000 or (-1,1) > 1000 or
  (0,-1) > 1000                     or (0,1) > 1000
                   or (1,0) > 1000  or (1,1) > 1000
 )
}
rule :  { (1,0) - 2 + 8 }     { 90 + ((1,0) - 2 - 100000 ) }
{ (0,0) = 8100 and
(
  (-1,-1) > 1000 or (-1,0) > 1000 or (-1,1) > 1000 or
  (0,-1) > 1000                     or (0,1) > 1000  or
  (1,-1) > 1000                     or (1,1) > 1000
 )
}
rule :  { (1,1) - 1 + 9 }     { 90 + ((1,1) - 1 - 100000 ) }
{ (0,0) = 9100 and
(
  (-1,-1) > 1000 or (-1,0) > 1000 or (-1,1) > 1000 or
  (0,-1) > 1000                     or (0,1) > 1000  or
  (1,-1) > 1000  or (1,0) > 1000
 )
}


rule :   { (-2,-2) }
{ 90 + trunc(
 (
  if ( (0,0)=6100, (0,1), 0 ) + if ( (0,0)=8100, (1,0), 0 )  + if ( (0,0)=9100, (1,1), 0 )
 )/10 - 10000) * 10 }        { ((0,0) = 6100 or (0,0) = 8100 or (0,0) = 9100) and (-2,-2) > 100000 }
rule :   { (-2,-1) }
{ 90 + trunc(
 (
  if ( (0,0)=6100, (0,1), 0 ) + if ( (0,0)=7100, (1,-1), 0 )  + if ( (0,0)=8100, (1,0), 0 )  + if ( (0,0)=9100, (1,1), 0 )
 )/10 - 10000) * 10 }    { ((0,0) = 6100 or (0,0) = 7100 or (0,0) = 8100 or (0,0) = 9100) and (-2,-1) > 100000 }
rule :   { (-2,0) }
{ 90 + trunc(
 (
  if ( (0,0)=7100, (1,-1), 0 )  + if ( (0,0)=8100, (1,0), 0 )  + if ( (0,0)=9100, (1,1), 0 )
 )/10 - 10000) * 10 }     { ((0,0) = 7100 or (0,0) = 8100 or (0,0) = 9100) and (-2,0) > 100000 }
rule :   { (-2,1) }
{ 90 + trunc(
 (
  if ( (0,0)=4100, (0,-1), 0 ) + if ( (0,0)=7100, (1,-1), 0 )  + if ( (0,0)=8100, (1,0), 0 )  + if ( (0,0)=9100, (1,1), 0 )
 )/10 - 10000) * 10 }     { ((0,0) = 4100 or (0,0) = 7100 or (0,0) = 8100 or (0,0) = 9100) and (-2,1) > 100000 }
rule :   { (-2,2) }
{ 90 + trunc(
 (
  if ( (0,0)=4100, (0,-1), 0 ) + if ( (0,0)=7100, (1,-1), 0 )  + if ( (0,0)=8100, (1,0), 0 )
 )/10 - 10000) * 10 }     { ((0,0) = 4100 or (0,0) = 7100 or (0,0) = 8100) and (-2,2) > 100000 }

rule :   { (-1,-2) }
{ 90 + trunc(
 (
  if ( (0,0)=3100, (-1,1), 0 ) + if ( (0,0)=6100, (0,1), 0 ) + if ( (0,0)=8100, (1,0), 0 )  + if ( (0,0)=9100, (1,1), 0 )
 )/10 - 10000) * 10 }    { ((0,0) = 3100 or (0,0) = 6100 or (0,0) = 8100 or (0,0) = 9100) and (-1,-2) > 100000 }
rule :   { (-1,2) }
{ 90 + trunc(
 (
  if ( (0,0)=1100, (-1,-1), 0 ) + if ( (0,0)=4100, (0,-1), 0 ) + if ( (0,0)=7100, (1,-1), 0 )  + if ( (0,0)=8100, (1,0), 0 )
 )/10 - 10000) * 10 }     { ((0,0) = 1100 or (0,0) = 4100 or (0,0) = 7100 or (0,0) = 8100) and (-1,2) > 100000 }

rule :   { (0,-2) }
{ 90 + trunc(
 (
  if ( (0,0)=3100, (-1,1), 0 ) + if ( (0,0)=6100, (0,1), 0 ) + if ( (0,0)=9100, (1,1), 0 )
 )/10 - 10000) * 10 }     { ((0,0) = 3100 or (0,0) = 6100 or (0,0) = 9100) and (0,-2) > 100000 }
rule :   { (0,2) }
{ 90 + trunc(
 (
  if ( (0,0)=1100, (-1,-1), 0 ) + if ( (0,0)=4100, (0,-1), 0 ) + if ( (0,0)=7100, (1,-1), 0 )
 )/10 - 10000) * 10 }     { ((0,0) = 1100 or (0,0) = 4100 or (0,0) = 7100) and (0,2) > 100000 }

rule :   { (1,-2) }
{ 90 + trunc(
 (
  if ( (0,0)=2100, (-1,0), 0 ) + if ( (0,0)=3100, (-1,1), 0 ) + if ( (0,0)=6100, (0,1), 0 ) + if ( (0,0)=9100, (1,1), 0 )
 )/10 - 10000) * 10 }     { ((0,0) = 2100 or (0,0) = 3100 or (0,0) = 6100 or (0,0) = 9100) and (1,-2) > 100000 }
rule :   { (1,2) }
{ 90 + trunc(
 (
  if ( (0,0)=1100, (-1,-1), 0 ) + if ( (0,0)=2100, (-1,0), 0 ) + if ( (0,0)=4100, (0,-1), 0 )+ if ( (0,0)=7100, (1,-1), 0 )
 )/10 - 10000) * 10 }     { ((0,0) = 1100 or (0,0) = 2100 or (0,0) = 4100 or (0,0) = 7100) and (1,2) > 100000 }

rule :   { (2,-2) }
{ 90 + trunc(
 (
  if ( (0,0)=2100, (-1,0), 0 ) + if ( (0,0)=3100, (-1,1), 0 ) + if ( (0,0)=6100, (0,1), 0 )
 )/10 - 10000) * 10 }     { ((0,0) = 2100 or (0,0) = 3100 or (0,0) = 6100) and (2,-2) > 100000 }
rule :   { (2,-1) }
{ 90 + trunc(
 (
  if ( (0,0)=1100, (-1,-1), 0 ) + if ( (0,0)=2100, (-1,0), 0 ) + if ( (0,0)=3100, (-1,1), 0 ) + if ( (0,0)=6100, (0,1), 0 )
 )/10 - 10000) * 10 }     { ((0,0) = 1100 or (0,0) = 2100 or (0,0) = 3100 or (0,0) = 6100) and (2,-1) > 100000 }
rule :   { (2,0) }
{ 90 + trunc(
 (
  if ( (0,0)=1100, (-1,-1), 0 ) + if ( (0,0)=2100, (-1,0), 0 ) + if ( (0,0)=3100, (-1,1), 0 )
 )/10 - 10000) * 10 }      { ((0,0) = 1100 or (0,0) = 2100 or (0,0) = 3100) and (2,0) > 100000 }
rule :   { (2,1) }
{ 90 + trunc(
 (
  if ( (0,0)=1100, (-1,-1), 0 ) + if ( (0,0)=2100, (-1,0), 0 ) + if ( (0,0)=3100, (-1,1), 0 ) + if ( (0,0)=4100, (0,-1), 0 )
 )/10 - 10000) * 10 }      { ((0,0) = 1100 or (0,0) = 2100 or (0,0) = 3100 or (0,0) = 4100) and (2,1) > 100000 }
rule :   { (2,2) }
{ 90 + trunc(
 (
  if ( (0,0)=1100, (-1,-1), 0 ) + if ( (0,0)=2100, (-1,0), 0 ) + if ( (0,0)=4100, (0,-1), 0 )
 )/10 - 10000) * 10 }      { ((0,0) = 1100 or (0,0) = 2100 or (0,0) = 4100) and (2,2) > 100000 }

rule :  { (-1,-1) - 9 + 1 }      { ((-1,-1) - 9 - 100000) + 90 }      { (0,0) = 1100 and (2,2) = 9100 }
rule :  { (-1,0) - 8 + 2 }       { ((-1,0) - 8 - 100000) + 90 }       { (0,0) = 2100 and (2,0) = 8100 }
rule :  { (-1,1) - 7 + 3 }       { ((-1,1) - 7 - 100000) + 90 }       { (0,0) = 3100 and (2,-2) = 7100 }
rule :  { (0,-1) - 6 + 4 }       { ((0,-1) - 6 - 100000) + 90 }       { (0,0) = 4100 and (0,2) = 6100 }
rule :  { (0,1) - 4 + 6 }        { ((0,1) - 4 - 100000) + 90 }        { (0,0) = 6100 and (0,-2) = 4100 }
rule :  { (1,-1) - 3 + 7 }       { ((1,-1) - 3 - 100000) + 90 }       { (0,0) = 7100 and (-2,2) = 3100 }
rule :  { (1,0) - 2 + 8 }        { ((1,0) - 2 - 100000) + 90 }        { (0,0) = 8100 and (-2,0) = 2100 }
rule :  { (1,1) - 1 + 9 }        { ((1,1) - 1 - 100000) + 90 }        { (0,0) = 9100 and (-2,-2) = 1100 }


rule :  { (-1,-1) }     { ((-1,-1) - 9 - 100000) + 90 }     { (0,0) = 1100 }
rule :  { (-1,0) }      { ((-1,0) - 8 - 100000) + 90 }      { (0,0) = 2100 }
rule :  { (-1,1) }      { ((-1,1) - 7 - 100000) + 90 }      { (0,0) = 3100 }
rule :  { (0,-1) }      { ((0,-1) - 6 - 100000) + 90 }      { (0,0) = 4100 }
rule :  { (0,1) }       { ((0,1) - 4 - 100000) + 90 }       { (0,0) = 6100 }
rule :  { (1,-1) }      { ((1,-1) - 3 - 100000) + 90 }      { (0,0) = 7100 }
rule :  { (1,0) }       { ((1,0) - 2 - 100000) + 90 }       { (0,0) = 8100 }
rule :  { (1,1) }       { ((1,1) - 1 - 100000) + 90 }       { (0,0) = 9100 }

rule :  { 1100 }        50      { (-1,-1) > 100000 and remainder( (-1,-1),10 ) = 9 }
rule :  { 2100 }        50      { (-1,0) > 100000 and remainder( (-1,0),10 ) = 8 }
rule :  { 3100 }        50      { (-1,1) > 100000 and remainder( (-1,1),10 ) = 7 }
rule :  { 4100 }        50      { (0,-1) > 100000 and remainder( (0,-1),10 ) = 6 }
rule :  { 6100 }        50      { (0,1) > 100000 and remainder( (0,1),10 ) = 4 }
rule :  { 7100 }        50      { (1,-1) > 100000 and remainder( (1,-1),10 ) = 3 }
rule :  { 8100 }        50      { (1,0) > 100000 and remainder( (1,0),10 ) = 2 }
rule :  { 9100 }        50      { (1,1) > 100000 and remainder( (1,1),10 ) = 1 }

rule :  {
if(((-2,-2) > 100000),1,0) + if(((-2,-1) > 100000),1,0) + if(((-2,0) > 100000),1,0) + if(((-2,1) > 100000),1,0) + if(((-2,2) > 100000),1,0) +
if(((-1,-2) > 100000),1,0) + if(((-1,-1) > 100000),1,0) + if(((-1,0) > 100000),1,0) + if(((-1,1) > 100000),1,0) + if(((-1,2) > 100000),1,0) +
if(((0,-2) > 100000),1,0)  + if(((0,-1) > 100000),1,0)                              + if(((0,1) > 100000),1,0)  + if(((0,2) > 100000),1,0)  +
if(((1,-2) > 100000),1,0)  + if(((1,-1) > 100000),1,0)  + if(((1,0) > 100000),1,0)  + if(((1,1) > 100000),1,0)  + if(((1,2) > 100000),1,0)  +
if(((2,-2) > 100000),1,0)  + if(((2,-1) > 100000),1,0)  + if(((2,0) > 100000),1,0)  + if(((2,1) > 100000),1,0)  + if(((2,2) > 100000),1,0)
}       10      { t }

