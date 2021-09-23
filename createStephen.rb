require 'cryptopunks'


human_light    = Punks::Image.new( design: 'human-male!light' )
human_light = human_light.change_colors( { 0x000000 => 0x6A88A1 } )
stephenshades            = Image.read(  "./MyPunks/Attributes/stephenshades.png" )
cigar            = Image.read(  "./MyPunks/Attributes/cigar.png" )


punk = Image.new( 24, 24 )
punk.compose!( human_light )
punk.compose!( stephenshades, 6, 10 )
punk.compose!( cigar, 13, 13 )

punk.save( "./MyPunks/Stephen/Stephen.png" )
punk.zoom(4).save( "./MyPunks/Stephen/Stephen4x.png" )