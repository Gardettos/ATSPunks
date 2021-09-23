require 'cryptopunks'


human_light    = Punks::Image.new( design: 'human-male!light' )
human_light = human_light.change_colors( { 0x000000 => 0x6A88A1 } )
bigshades            = Image.read(  "./MyPunks/Attributes/bigshades.png" )
cigarette            = Image.read(  "./MyPunks/Attributes/cigarette.png" )
fedora            = Image.read(  "./MyPunks/Attributes/fedora.png" )

punk = Image.new( 24, 24 )
punk.compose!( human_light )
punk.compose!( bigshades, 6, 10 )
punk.compose!( cigarette, 13, 14 )
punk.compose!( fedora, 3, 3 )
punk.save( "./MyPunks/Adam/Adam.png" )
punk.zoom(4).save( "./MyPunks/Adam/Adam4x.png" )
