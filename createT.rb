require 'cryptopunks'


human_light    = Punks::Image.new( design: 'human-male!light' )
human_light = human_light.change_colors( { 0x000000 => 0x6A88A1 } )
cap            = Image.read(  "./MyPunks/Attributes/cap.png" )
facescruff            = Image.read(  "./MyPunks/Attributes/facescruff.png" )

punk = Image.new( 24, 24 )
punk.compose!( human_light )
punk.compose!( cap, 6, 4 )
punk.compose!( facescruff, 6, 14 )
punk.save( "./MyPunks/T/T.png" )
punk.zoom(4).save( "./MyPunks/T/T4x.png" )