require 'cryptopunks'


human_light    = Punks::Image.new( design: 'human-male!light' )
human_light = human_light.change_colors( { 0x000000 => 0x6A88A1 } )
pipe            = Image.read(  "./MyPunks/Attributes/pipe.png" )
capforward            = Image.read(  "./MyPunks/Attributes/capforward.png" )
eyebrow            = Image.read(  "./MyPunks/Attributes/eyebrow.png" )


punk = Image.new( 24, 24 )
punk.compose!( human_light )


punk.compose!( pipe, 13, 11 )
punk.compose!( capforward, 6, 4 )
punk.compose!( eyebrow, 9, 11 )
punk.compose!( eyebrow, 14, 11 )
punk.save( "./MyPunks/Kevin/Kevin.png" )
punk.zoom(4).save( "./MyPunks/Kevin/Kevin4x.png" )