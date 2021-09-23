require 'cryptopunks'


human_light    = Punks::Image.new( design: 'human-male!dark' )
human_light = human_light.change_colors( { 0x000000 => 0x6A88A1 } )


coolshades            = Image.read(  "./MyPunks/Attributes/coolshades.png" )
ecig            = Image.read(  "./MyPunks/Attributes/ecig.png" )
bearscap            = Image.read(  "./MyPunks/Attributes/bearscap.png" )

punk = Image.new( 24, 24 )
punk.compose!( human_light )
punk.compose!( coolshades, 6, 10 )
punk.compose!( ecig, 13, 17 )
punk.compose!( bearscap, 6, 4 )

punk.save( "./MyPunks/Jerry/Jerry.png" )
punk.zoom(4).save( "./MyPunks/Jerry/Jerry4x.png" )