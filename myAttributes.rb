require 'cryptopunks'

bigshades = Image.parse( <<TXT, colors: ['000000', 'F7F760'] ) #black and yellow color
. @ @ @ @ @ . @ @ @ @ @
. @ x x x @ @ @ x x x @
@ @ x x x @ . @ x x x @
. @ x x x @ . @ x x x @
. . @ @ @ . . . @ @ @ .
TXT
bigshades.save( "./MyPunks/Attributes/bigshades.png" )
bigshades.zoom(4).save( "./MyPunks/Attributes/bigshades4x.png" )

coolshades = Image.parse( <<TXT, colors: ['000000', '000766', '0010e6'] )
@ @ @ @ @ @ @ @ @ @ @ @
. . @ x x @ . @ x x @ .
. . @ o o @ . @ o o @ .
. . . @ @ . . . @ @ . .
TXT
coolshades.save( "./MyPunks/Attributes/coolshades.png" )
coolshades.zoom(4).save( "./MyPunks/Attributes/coolshades4x.png" )

stephenshades = Image.parse( <<TXT, colors: ['000000', '6D0202', '940404'] )
@ @ @ @ @ @ @ @ @ @ @ @
. . @ x x @ . @ x x @ .
. . @ o o @ . @ o o @ .
. . . @ @ . . . @ @ . .
TXT
stephenshades.save( "./MyPunks/Attributes/stephenshades.png" )
stephenshades.zoom(4).save( "./MyPunks/Attributes/stephenshades4x.png" )

cap = Image.parse( <<TXT, colors: ['203731', 'FFB612'] ) #baby blue and yellow
. . @ @ @ @ @ @ @ . . . . .
. @ @ @ @ @ @ x @ @ . . . .
@ @ @ @ @ @ @ @ x @ . . . .
@ @ @ @ @ @ @ @ @ @ @ @ @ .
@ @ @ @ @ @ @ @ @ @ @ @ @ @
TXT
cap.save( "./MyPunks/Attributes/cap.png" )
cap.zoom(4).save( "./MyPunks/Attributes/cap4x.png" )

bearscap = Image.parse( <<TXT, colors: ['0B162A', 'C83803'] )
. . @ @ @ @ @ @ @ . . . . .
. @ @ @ @ @ @ x @ @ . . . .
@ @ @ @ @ @ @ @ x @ . . . .
@ @ @ @ @ @ @ @ @ @ @ @ @ .
@ @ @ @ @ @ @ @ @ @ @ @ @ @
TXT
bearscap.save( "./MyPunks/Attributes/bearscap.png" )
bearscap.zoom(4).save( "./MyPunks/Attributes/bearscap4x.png" )

bluecap = Image.parse( <<TXT, colors: ['0033A0', 'FFFFFF'] ) 
. . @ @ @ @ @ @ @ . . . . .
. @ @ @ @ @ @ x @ @ . . . .
@ @ @ @ @ @ @ @ x @ . . . .
@ @ @ @ @ @ @ @ @ @ @ @ @ .
@ @ @ @ @ @ @ @ @ @ @ @ @ @
TXT
bluecap.save( "./MyPunks/Attributes/bluecap.png" )
bluecap.zoom(4).save( "./MyPunks/Attributes/bluecap4x.png" )


bandana = Image.parse( <<TXT, colors: ['8C0404', '9f0000', 'c90000'] )
. . . . . . x x x x x x x x .
. . . . . x o o o o o o o o x
. . . . x o o o o o o o o o x
o x o x @ o x x x x o o o x .
. o x @ . . . . . . x x x . .
. o @ . . . . . . . . . . . .
. o . . . . . . . . . . . . .
TXT
bandana.save( "./MyPunks/Attributes/bandana.png" )
bandana.zoom(4).save( "./MyPunks/Attributes/bandana4x.png" )


cigarette = Image.parse( <<TXT, colors: ['000000', 'bdbdbd', 'ff2b00'] )
. . . . . . x
. . . . . . x
. . . . . . x
@ @ @ @ @ @ .
@ x x x x o @
@ @ @ @ @ @ .
TXT
cigarette.save( "./MyPunks/Attributes/cigarette.png" )
cigarette.zoom(4).save( "./MyPunks/Attributes/cigarette4x.png" )


ecig = Image.parse( <<TXT, colors: ['000000', 'bdbdbd', '0000ff'] )
@ @ @ @ @ @ .
@ x x x x o @
@ @ @ @ @ @ .
TXT
ecig.save( "./MyPunks/Attributes/ecig.png" )
ecig.zoom(4).save( "./MyPunks/Attributes/ecig4x.png" )

cigar = Image.parse( <<TXT, colors: ['000000', 'ff2b00', 'bdbdbd', '52361b'] )
. . . . . . . o
. . . . . . . o
. . . . . . . o
. . . . . . . .
@ @ @ @ @ @ @ .
@ ^ ^ ^ ^ o x @
@ @ @ @ @ @ @ .
TXT
cigar.save( "./MyPunks/Attributes/cigar.png" )
cigar.zoom(4).save( "./MyPunks/Attributes/cigar4x.png" )


eyebrow = Image.parse( <<TXT, colors: ['404040'])
@ @ 
TXT
eyebrow.save( "./MyPunks/Attributes/eyebrow.png" )
eyebrow.zoom(4).save( "./MyPunks/Attributes/eyebrow4x.png" )


pipe = Image.parse( <<TXT, colors: ['000000', '683c08', '855114', 'b9b9b980'] )
. . . . . . . ^ . .
. . . . . . ^ ^ ^ .
. . . . . . ^ ^ ^ .
. . . . . . . . . .
. . . . . . . ^ . .
. . . . . . . . . .
. . . . . . . ^ . .
. @ . . . . . . . .
@ o @ . . @ @ @ @ @
. @ o @ . @ o o o @
. . @ o @ @ x o x @
. . . @ o o o x @ .
. . . . @ @ @ @ . .
TXT
pipe.save( "./MyPunks/Attributes/pipe.png" )
pipe.zoom(4).save( "./MyPunks/Attributes/pipe4x.png" )

beard = Image.parse( <<TXT,  colors: ['A87B27', '000000']  )
. . @ @ @ @ @ @ @ x .
@ @ @ @ . . . @ @ @ x
@ @ @ @ @ @ @ @ @ @ x
@ @ @ @ @ @ @ @ @ @ x
x @ @ @ @ @ @ @ @ @ x
. x @ @ @ @ @ @ x x . 
. . x x x x x x . . . 
TXT
beard.save( "./MyPunks/Attributes/beard.png" )
beard.zoom(4).save( "./MyPunks/Attributes/beard4x.png" )

facescruff = Image.parse( <<TXT,  colors: ['ae7024']  )
. . . . . . . . . . .
. @ . . . . . . . . .
. @ @ . . . . . . @ .
. @ @ @ @ @ @ @ @ @ .
. @ @ @ @ . . . @ @ .
. . @ @ @ @ @ @ @ @ .
. . . @ @ @ @ @ @ . .
. . . . . . . . . . . 
TXT
facescruff.save( "./MyPunks/Attributes/facescruff.png" )
facescruff.zoom(4).save( "./MyPunks/Attributes/facescruff4x.png" )

stubleBeard = Image.parse( <<TXT,  colors: ['AC5C09']  )
. . . . . . . . . . .
. @ . . . . . . . . .
. @ @ . . . . . . @ .
. @ @ @ @ @ @ @ @ @ .
. @ @ @ @ . . . @ @ .
. . @ @ @ @ @ @ @ @ .
. . . @ @ @ @ @ @ . .
. . . . . . . . . . . 
TXT
stubleBeard.save( "./MyPunks/Attributes/stubleBeard.png" )
stubleBeard.zoom(4).save( "./MyPunks/Attributes/stubleBeard4x.png" )

fedora = Image.parse( <<TXT,  colors:  ['DCDCDC', '000000']  )
. . . . . . @ @ @ @ @ . . . . . .
. . . . . @ @ @ @ @ @ @ . . . . .
. . . . . @ @ @ @ @ @ @ . . . . .
. . . . @ @ @ @ @ @ @ @ @ . . . .
. . . x x x x x x x x x x x . . .
. @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ .
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
TXT
fedora.save( "./MyPunks/Attributes/fedora.png" )
fedora.zoom(4).save( "./MyPunks/Attributes/fedora4x.png" )

crazyhair = Image.parse( <<TXT,  colors:  ['1E1E1B', 'bdbdbd']  )
. . . . . @ . . . . @ . . . . . . .
. . . . @ @ @ . @ @ @ @ . . @ . . .
. . . . @ @ @ @ @ @ x @ @ @ @ . . .
. . @ @ @ x @ @ @ @ @ @ @ @ @ @ . .
@ . . @ @ @ @ @ @ @ @ @ x @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ .
. . @ @ @ @ @ @ . . @ . @ . @ . . .
. . @ @ . . @ . . . . . . . . . . .
. @ @ @ . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . .
TXT
crazyhair.save( "./MyPunks/Attributes/crazyhair.png" )
crazyhair.zoom(4).save( "./MyPunks/Attributes/crazyhair4x.png" )

capforward = Image.parse( <<TXT,  colors:  ['000000','353535','004000']  )
. . @ @ @ @ @ @ @ . . . .
. @ o o o o o o o @ . . .
@ o o o o o o o o o @ . .
@ o o o o o o o o o @ @ .
@ o o o x x x x x x x x @
@ @ @ @ @ @ @ @ @ @ @ @ @
TXT
capforward.save( "./MyPunks/Attributes/capforward.png" )
capforward.zoom(4).save( "./MyPunks/Attributes/capforward4x.png" )

inhaler = Image.parse( <<TXT,  colors:  ['000000', 'add8e6', '0000a5', 'ffffff' ]  )
. . . @ @ @ @
. . . @ ^ ^ @
. . . @ x x @
. . . @ x x @
. . . @ x x @
. @ @ @ x x @
. @ o o x x @
. @ @ @ @ @ @
TXT
inhaler.save( "./MyPunks/Attributes/inhaler.png" )
inhaler.zoom(4).save( "./MyPunks/Attributes/inhaler4x.png" )


johnshades = Image.parse( <<TXT, colors: ['000000'] )
@ @ @ @ @ @ @ @ @ @ @ @
. . @ @ @ @ . @ @ @ @ .
. . @ @ @ @ . @ @ @ @ .
. . . @ @ . . . @ @ . .
TXT
johnshades.save( "./MyPunks/Attributes/johnshades.png" )
johnshades.zoom(4).save( "./MyPunks/Attributes/johnshades4x.png" )

cowboyhat = Image.parse( <<TXT, colors: ['794B11', '502F05'] )
 . . . . . . @ @ . . . @ @ . . . . . .
 . . . . . @ @ @ @ @ @ @ @ @ . . . . .
 . . . . . @ @ @ @ @ @ @ @ @ . . . . .
 . . . . . @ @ @ @ @ @ @ @ @ . . . . .
 @ . . . x x x x x x x x x x x . . . @
 @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
 . @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ .
TXT
cowboyhat.save( "./MyPunks/Attributes/cowboy.png" )
cowboyhat.zoom(4).save( "./MyPunks/Attributes/cowboy4x.png" )


jimBeard = Image.parse( <<TXT,  colors: ['858585']  )
. . . . . . . . . . .
. @ . . . . . . . . .
. @ @ . . . . . . @ .
. @ @ @ @ @ @ @ @ @ .
. @ @ @ @ . . . @ @ .
. . @ @ @ @ @ @ @ @ .
. . . @ @ @ @ @ @ . .
. . . . . . . . . . . 
TXT
jimBeard.save( "./MyPunks/Attributes/jimBeard.png" )
jimBeard.zoom(4).save( "./MyPunks/Attributes/jimBeard4x.png" )
