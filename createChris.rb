require 'cryptopunks'


human_light    = Punks::Image.new( design: 'human-male!light' )
human_light = human_light.change_colors( { 0x000000 => 0x6A88A1 } )
facescruff            = Image.read(  "./MyPunks/Attributes/facescruff.png" )
coolshades            = Image.read(  "./MyPunks/Attributes/johnshades.png" )
hair            = Image.read(  "./MyPunks/Attributes/hair.png" )
chriscap            = Image.read(  "./MyPunks/Attributes/chriscap.png" )

punk = Image.new( 24, 24 )
punk.compose!( human_light )
punk.compose!( facescruff, 6, 14 )
punk.compose!( hair)
punk.compose!( coolshades, 6, 10 )
punk.compose!( chriscap, 6, 4 )

punk.save( "./MyPunks/Chris/Chris.png" )
punk.zoom(4).save( "./MyPunks/Chris/Chris4x.png" )