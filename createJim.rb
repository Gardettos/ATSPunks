require 'cryptopunks'


human_light    = Punks::Image.new( design: 'human-male!light' )
human_light = human_light.change_colors( { 0x000000 => 0x6A88A1 } )
coolshades            = Image.read(  "./MyPunks/Attributes/johnshades.png" )
beard            = Image.read(  "./MyPunks/Attributes/jimBeard.png" )
cigar            = Image.read(  "./MyPunks/Attributes/cigar.png" )
cowboy            = Image.read(  "./MyPunks/Attributes/cowboy.png" )


punk = Image.new( 24, 24 )
punk.compose!( human_light )
punk.compose!( beard, 6, 14 )
punk.compose!( coolshades, 6, 10 )
punk.compose!( cigar, 13, 13 )
punk.compose!( cowboy, 2, 2 )

punk.save( "./MyPunks/Jim/Jim.png" )
punk.zoom(4).save( "./MyPunks/Jim/Jim4x.png" )
