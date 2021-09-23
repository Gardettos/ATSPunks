require 'cryptopunks'

human_light    = Punks::Image.new( design: 'human-male!light' )
human_light = human_light.change_colors( { 0x000000 => 0x6A88A1 } )
bandana            = Image.read(  "./MyPunks/Attributes/bandana.png" )
beard            = Image.read(  "./MyPunks/Attributes/beard.png" )
cigarette            = Image.read(  "./MyPunks/Attributes/cigarette.png" )

punk = Image.new( 24, 24 )
punk.compose!( human_light )
punk.compose!( bandana, 2, 5 )
punk.compose!( beard, 7, 17 )
punk.compose!( cigarette, 13, 14 )
punk.save( "./MyPunks/Joel/Joel.png" )
punk.zoom(4).save( "./MyPunks/Joel/Joel4x.png" )