require 'cryptopunks'

human_light    = Punks::Image.new( design: 'human-male!light' )
human_light = human_light.change_colors( { 0x000000 => 0x6A88A1 } )
bluecap            = Image.read(  "./MyPunks/Attributes/bluecap.png" )
coolshades            = Image.read(  "./MyPunks/Attributes/coolshades.png" )
#inhaler            = Image.read(  "./MyPunks/Attributes/inhaler.png" )
punk = Image.new( 24, 24 )

punk.compose!( human_light )
punk.compose!( bluecap, 6, 4 )
#punk.compose!( inhaler, 13,12 )
punk.compose!( coolshades, 6, 10 )
colors = punk.pixels.uniq
colors.count

punk.save( "./MyPunks/John/John.png" )
punk.zoom(4).save( "./MyPunks/John/John4x.png" )