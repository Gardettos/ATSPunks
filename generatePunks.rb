require 'pixelart'
require 'digest'

PUNK_CODES = [
    [1, 1, 4, 2, 3, 0], #CG
    [1, 1, 8, 0, 0, 4], #KB
    [1, 1, 0, 0, 2, 3], #SG
    [1, 1, 1, 0, 1, 0], #JG
    [1, 1, 3, 2, 0, 0], #T
    [1, 1, 7, 0, 4, 1], #AS
    [1, 2, 2, 0, 1, 2], #JC
    [1, 1, 5, 1, 0, 1], #JF
    [1, 1, 6, 3, 3, 3] #JCG
    ]

BACKGROUND_COLORS_BLUE = ['6A88A1']

HUMAN_MALE_COLORS_LIGHT = ['000000','a66e2c','d29d60','dbb180','e7cba9']
HUMAN_MALE_COLORS_DARK = ['000000','86581e','b69f82','a77c47','ae8b61']
                          #outline, #eyebrows, #rightPartEye, #skin, #headShine

CAP_COLORS_BLUEWHITE = ['0033A0', 'FFFFFF']
CAP_COLORS_BEARS = ['0B162A', 'C83803']
CAP_COLORS_GREENYELLOW = ['203731', 'FFB612']
CAP_COLORS_BLACKRED = ['000000', 'BA0C2F']
BANDANA_COLORS_RED = ['8C0404', '9f0000', 'c90000']
COWBOY_COLORS = ['794B11', '502F05']
BUCKET_COLORS_WHITE = ['DCDCDC', '000000']
FORWARD_COLORS_GREEN = ['000000','353535','004000']

BIGBEARD_COLORS_BROWN = ['A87B27', '000000']
REGULARBEARD_COLORS_RED = ['ae7024'] 
REGULARBEARD_COLORS_GREY = ['858585']

COOLSHADES_COLORS_BLUE = ['000000', '000766', '0010e6']
COOLSHADES_COLORS_RED = ['000000', '6D0202', '940404']
REGULAR_SHADES_COLORS_BLACK = ['000000']
BIG_SHADES_COLORS_BLACKYELLOW = ['000000', 'F7F760']

CIGARETTE_COLORS_NORMAL = ['000000', 'bdbdbd', 'ff2b00']
ECIG_COLORS_BLUE = ['000000', 'bdbdbd', '0000ff']
CIGAR_COLORS_NORMAL = ['000000', 'ff2b00', 'bdbdbd', '52361b']
PIPE_COLORS_NORMAL = ['000000', '683c08', '855114', 'b9b9b980']

PARTS = {
    background:  { required: true,
     attributes: [[BACKGROUND_COLORS_BLUE, './parts/background/backgroundBlue.png']
                 ]
        },
  face:  { required: true,
           attributes: [[HUMAN_MALE_COLORS_LIGHT, './parts/face/maleLight.png'] ,
                        [HUMAN_MALE_COLORS_DARK, './parts/face/maleDark.png'] 
                        ]
        },
  hat: { required: false,
           attributes: [[CAP_COLORS_BLUEWHITE, './parts/hat/hatCapBlueWhite.png'],
                        [CAP_COLORS_BEARS,  './parts/hat/hatCapBears.png'], 
                        [CAP_COLORS_GREENYELLOW,  './parts/hat/hatCapGreenYellow.png'], 
                        [CAP_COLORS_BLACKRED,  './parts/hat/hatCapBlackRed.png'],
                        [BANDANA_COLORS_RED,  './parts/hat/hatBandanaRed.png'],
                        [COWBOY_COLORS,  './parts/hat/hatCowboy.png'],
                        [BUCKET_COLORS_WHITE,  './parts/hat/hatBucketWhite.png'],
                        [FORWARD_COLORS_GREEN,  './parts/hat/hatForwardGreen.png']
                       ]
        },
    beard: { required: false,
    attributes: [[BIGBEARD_COLORS_BROWN, './parts/beard/beardBigBrown.png'],
                 [REGULARBEARD_COLORS_RED,  './parts/beard/beardRegularRed.png'],
                 [REGULARBEARD_COLORS_GREY,  './parts/beard/beardRegularGrey.png']
                ]
         },

    eyes: { required: false,
    attributes: [[COOLSHADES_COLORS_BLUE, './parts/eyes/eyesCoolShadesBlue.png'],
                [COOLSHADES_COLORS_RED,  './parts/eyes/eyesCoolShadesRed.png'],
                [REGULAR_SHADES_COLORS_BLACK,  './parts/eyes/eyesRegularShadesBlack.png'],
                [BIG_SHADES_COLORS_BLACKYELLOW,  './parts/eyes/eyesBigShadesBlackYellow.png'],
                ]
        },
    mouth: { required: false,
    attributes: [[CIGARETTE_COLORS_NORMAL, './parts/mouth/mouthCigaretteNormal.png'],
                [ECIG_COLORS_BLUE,  './parts/mouth/mouthEcigBlue.png'],
                [CIGAR_COLORS_NORMAL,  './parts/mouth/mouthCigarNormal.png'],
                [PIPE_COLORS_NORMAL,  './parts/mouth/mouthPipeNormal.png'],
                ]
        },
}

def createBackground(backgroudColor, fileLocation)
puts 'createBackround' + fileLocation
background = Image.parse( <<TXT, colors: backgroudColor ) 
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @
TXT
background.save( fileLocation )
end 

def createHat(hatColors, fileLocation)
puts 'createHat: ' + fileLocation

if fileLocation.include? "hatCap"
cap = Image.parse( <<TXT, colors: hatColors ) 
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . @ @ @ @ @ @ @ . . . . . . . . .
. . . . . . . @ @ @ @ @ @ x @ @ . . . . . . . .
. . . . . . @ @ @ @ @ @ @ @ x @ . . . . . . . .
. . . . . . @ @ @ @ @ @ @ @ @ @ @ @ @ . . . . .
. . . . . . @ @ @ @ @ @ @ @ @ @ @ @ @ @ . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
TXT
cap.save( fileLocation )

elsif fileLocation.include? "hatBandana"
bandana = Image.parse( <<TXT, colors: hatColors )
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . x x x x x x x x . . . . . . . .
. . . . . . . x o o o o o o o o x . . . . . . .
. . . . . . x o o o o o o o o o x . . . . . . .
. . o x o x @ o x x x x o o o x . . . . . . . .
. . . o x @ . . . . . . x x x . . . . . . . . .
. . . o @ . . . . . . . . . . . . . . . . . . .
. . . o . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
TXT
bandana.save( fileLocation)

elsif fileLocation.include? "hatCowboy"
cowboyhat = Image.parse( <<TXT, colors: hatColors )
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . @ @ . . . @ @ . . . . . . . . .
. . . . . . . @ @ @ @ @ @ @ @ @ . . . . . . . .
. . . . . . . @ @ @ @ @ @ @ @ @ . . . . . . . .
. . . . . . . @ @ @ @ @ @ @ @ @ . . . . . . . .
. . @ . . . x x x x x x x x x x x . . . @ . . .
 . .@ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ . . .
. . . @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
TXT
cowboyhat.save( fileLocation)

elsif fileLocation.include? "hatBucket"
bucketHat = Image.parse( <<TXT, colors: hatColors )
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
 . . . . . . . . . @ @ @ @ @ . . .  . . . . . .
. . . . . . . . @ @ @ @ @ @ @ . . . . . . . . .
. . . . . . . . @ @ @ @ @ @ @ . . . . . . . . .
. . . . . . . @ @ @ @ @ @ @ @ @ . . . . . . . .
. . . . . . x x x x x x x x x x x . . . . . . .
. . . . @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ . . . . .
. . . @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
TXT
bucketHat.save( fileLocation)

elsif fileLocation.include? "hatForward"
capforward = Image.parse( <<TXT,  colors:  hatColors )
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . @ @ @ @ @ @ @ . . . . . . . . .
. . . . . . . @ o o o o o o o @ . . . . . . . .
. . . . . . @ o o o o o o o o o @ . . . . . . .
. . . . . . @ o o o o o o o o o @ @ . . . . . .
. . . . . . @ o o o x x x x x x x x @ . . . . .
. . . . . . @ @ @ @ @ @ @ @ @ @ @ @ @ . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
TXT
capforward.save( fileLocation )

end
end



def createFace(faceColors, fileLocation)
puts 'createFace: ' + fileLocation
punk = Image.parse( <<TXT, colors: faceColors )
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . @ @ @ @ @ @ @ . . . . . . . . .
. . . . . . . @ ^ ^ ^ ^ ^ ^ ^ @ . . . . . . . .
. . . . . . @ ^ ^ ~ ^ ^ ^ ^ ^ ^ @ . . . . . . .
. . . . . . @ ^ ~ ^ ^ ^ ^ ^ ^ ^ @ . . . . . . .
. . . . . . @ ^ ^ ^ ^ ^ ^ ^ ^ ^ @ . . . . . . .
. . . . . . @ ^ ^ ^ ^ ^ ^ ^ ^ ^ @ . . . . . . .
. . . . . . @ ^ ^ x x ^ ^ ^ x x @ . . . . . . .
. . . . . @ ^ ^ ^ @ o ^ ^ ^ @ o @ . . . . . . .
. . . . . @ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ @ . . . . . . .
. . . . . @ @ ^ ^ ^ ^ ^ ^ ^ ^ ^ @ . . . . . . .
. . . . . . @ ^ ^ ^ ^ ^ @ @ ^ ^ @ . . . . . . .
. . . . . . @ ^ ^ ^ ^ ^ ^ ^ ^ ^ @ . . . . . . .
. . . . . . @ ^ ^ ^ ^ ^ ^ ^ ^ ^ @ . . . . . . .
. . . . . . @ ^ ^ ^ ^ @ @ @ ^ ^ @ . . . . . . .
. . . . . . @ ^ ^ ^ ^ ^ ^ ^ ^ ^ @ . . . . . . .
. . . . . . @ ^ ^ ^ ^ ^ ^ ^ ^ @ . . . . . . . .
. . . . . . @ ^ ^ ^ @ @ @ @ @ . . . . . . . . .
. . . . . . @ ^ ^ ^ @ . . . . . . . . . . . . .
. . . . . . @ ^ ^ ^ @ . . . . . . . . . . . . .
TXT
punk.save( fileLocation )

end

def createBeard(beardColors, fileLocation)
puts 'createBeard: ' + fileLocation

if fileLocation.include? "beardBig"
bigBeard = Image.parse( <<TXT, colors: beardColors ) 
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . @ @ @ @ @ @ @ x . . . . . . .
. . . . . . . @ @ @ @ . . . @ @ @ x . . . . . .
. . . . . . . @ @ @ @ @ @ @ @ @ @ x . . . . . .
. . . . . . . @ @ @ @ @ @ @ @ @ @ x . . . . . .
. . . . . . . x @ @ @ @ @ @ @ @ @ x . . . . . .
. . . . . . . . x @ @ @ @ @ @ x x . . . . . . .
. . . . . . . . . x x x x x x . . . . . . . . .
TXT
bigBeard.save( fileLocation )

elsif fileLocation.include? "beardRegular"
regularBeard = Image.parse( <<TXT, colors: beardColors ) 
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . @ . . . . . . . . . . . . . . . .
. . . . . . . @ @ . . . . . . @ . . . . . . . .
. . . . . . . @ @ @ @ @ @ @ @ @ . . . . . . . .
. . . . . . . @ @ @ @ . . . @ @ . . . . . . . .
. . . . . . . . @ @ @ @ @ @ @ @ . . . . . . . .
. . . . . . . . . @ @ @ @ @ @ . . . . . . . . .
TXT
regularBeard.save( fileLocation )

end
end

def createEyes(eyeColors, fileLocation)
puts 'createEyes: ' + fileLocation
    
if fileLocation.include? "eyesCoolShades"
coolShades = Image.parse( <<TXT, colors: eyeColors ) 
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . @ @ @ @ @ @ @ @ @ @ @ @ . . . . . .
. . . . . . . . @ x x @ . @ x x @ . . . . . . .
. . . . . . . . @ o o @ . @ o o @ . . . . . . .
. . . . . . . . . @ @ . . . @ @ . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
TXT
coolShades.save( fileLocation )

elsif fileLocation.include? "eyesRegularShades"
regularShades = Image.parse( <<TXT, colors: eyeColors ) 
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . @ @ @ @ @ @ @ @ @ @ @ @ . . . . . .
. . . . . . . . @ @ @ @ . @ @ @ @ . . . . . . .
. . . . . . . . @ @ @ @ . @ @ @ @ . . . . . . .
. . . . . . . . . @ @ . . . @ @ . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
TXT
regularShades.save( fileLocation )
    
elsif fileLocation.include? "eyesBigShades"
bigShades = Image.parse( <<TXT, colors: eyeColors ) 
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . @ @ @ @ @ . @ @ @ @ @ . . . . . .
. . . . . . . @ x x x @ @ @ x x x @ . . . . . .
. . . . . . @ @ x x x @ . @ x x x @ . . . . . .
. . . . . . . @ x x x @ . @ x x x @ . . . . . .
. . . . . . . . @ @ @ . . . @ @ @ . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
TXT
bigShades.save( fileLocation )
end
end

def createMouth(mouthColors, fileLocation)
puts 'createMouth: ' + fileLocation
    
if fileLocation.include? "mouthCigarette"
cigarette = Image.parse( <<TXT, colors: mouthColors ) 
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . x . . . .
. . . . . . . . . . . . . . . . . . . x . . . .
. . . . . . . . . . . . . . . . . . . x . . . .
. . . . . . . . . . . . . @ @ @ @ @ @ . . . . .
. . . . . . . . . . . . . @ x x x x o @ . . . .
. . . . . . . . . . . . . @ @ @ @ @ @ . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
TXT
cigarette.save( fileLocation )

elsif fileLocation.include? "mouthEcig"
ecig = Image.parse( <<TXT, colors: mouthColors ) 
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . @ @ @ @ @ @ . . . . .
. . . . . . . . . . . . . @ x x x x o @ . . . .
. . . . . . . . . . . . . @ @ @ @ @ @ . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
TXT
ecig.save( fileLocation )
    
elsif fileLocation.include? "mouthCigar"
cigar = Image.parse( <<TXT, colors: mouthColors ) 
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . o . . .
. . . . . . . . . . . . . . . . . . . . o . . .
. . . . . . . . . . . . . . . . . . . . o . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . @ @ @ @ @ @ @ . . . .
. . . . . . . . . . . . . @ ^ ^ ^ ^ o x @ . . .
. . . . . . . . . . . . . @ @ @ @ @ @ @ . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
TXT
cigar.save( fileLocation )

elsif fileLocation.include? "mouthPipe"
pipe = Image.parse( <<TXT, colors: mouthColors ) 
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . ^ . . .
. . . . . . . . . . . . . . . . . . . ^ ^ ^ . .
. . . . . . . . . . . . . . . . . . . ^ ^ ^ . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . ^ . . .
. . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . ^ . . .
. . . . . . . . . . . . . . @ . . . . . . . . .
. . . . . . . . . . . . . @ o @ . . @ @ @ @ @ .
. . . . . . . . . . . . . . @ o @ . @ o o o @ .
. . . . . . . . . . . . . . . @ o @ @ x o x @ .
. . . . . . . . . . . . . . . . @ o o o x @ . .
. . . . . . . . . . . . . . . . . @ @ @ @ . . .
TXT
pipe.save( fileLocation )
end
end

def generatePunk(codes, punkIndex,colorChange = '') 
    punk = Pixelart::Image.new( 24, 24 )
    PARTS.each_with_index do |(key,part),i|
        code  = codes[i]
        if code != 0 
            attribute = part[:attributes][ code-1 ]      
            case String(key)
            when 'background'
                createBackground(attribute[0], attribute[1])
            when 'face'
                createFace(attribute[0], attribute[1])
            when 'hat'
                createHat(attribute[0], attribute[1])
            when 'beard'
                createBeard(attribute[0], attribute[1])
            when 'eyes'
                createEyes(attribute[0], attribute[1])
            when 'mouth'
                createMouth(attribute[0], attribute[1])
            end
            path = attribute[1]
            part = Pixelart::Image.read( path )
            punk.compose!( part )
        end
    end
    if colorChange != "" 
        newPunk = punk.change_colors(colorChange)
        newPunk.zoom(4).save("./punks/punk-#{punkIndex + 1}.png")
    else
        punk.zoom(4).save("./punks/punk-#{punkIndex + 1}.png")
    end
end

def writeFile(codes)
    File.open("./punkData.txt", 'w') { |file|   
    codes.each_with_index do |code, i|  
        codes_as_text = String(code)
        hash = Digest::SHA256.hexdigest(codes_as_text)
        file.write( "ATSPunk:#{i+1}, ATSP#{i+1}, #{hash}\n") 
    end
    }  
end

def main()
    #background, face, hat, beard, eyes, mouth
    PUNK_CODES.each_with_index do |code, i|   
        unless i == 1 
            generatePunk(code, i) 
        else
            generatePunk(code, i, {'#a66e2c' => '#404040'})
        end       
    end
writeFile(PUNK_CODES)
end

main()

