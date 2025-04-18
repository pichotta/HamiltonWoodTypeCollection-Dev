newPage(2000, 1000)

layers = [

    'HWTAmericanOutline.otf',  # 0
    'HWTAmericanSolid.otf', # 1
    'HWTAmericanInset.otf', # 2
    'HWTAmericanStars.otf' # 3
]

lineCount = 5
constantShadowColor = False
myLineHeight = 200

def rgbToHex(r, g, b):
    return '#%02x%02x%02x' % (int(r*255), int(g*255), int(b*255))


translate(0, height()-myLineHeight)

for lineNumber, line in enumerate(range(lineCount)):
    print('Line', lineNumber+1)
    for layerNumber, layer in enumerate(layers):
        myColor = random(), random(), random()
        
        # if the layer corresponds to a certain number
        if  constantShadowColor and layerNumber == 0:
            # set the color explicitly
            myColor = 0, 0, 0 
        print('\t', 'Layer', layerNumber, ':', rgbToHex(*myColor))
        font(layer, myLineHeight)
        fill(*myColor)
        text('Testing 123', (20, 20))
    translate(0, -myLineHeight)