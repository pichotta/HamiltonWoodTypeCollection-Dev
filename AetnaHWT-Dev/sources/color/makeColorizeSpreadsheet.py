
import csv
import os
myFileName = 'HWTAetnaStreamerHexValuesThreeLayers.csv'
#'Color font generator demo - Sheet1.csv'
#in Terminal run this command  python makeColorizeSpreadsheet.py

h = 200
w = 200

drawBot = False
try:
    fill()
    drawBot = True
except:
    def savedState(): pass

def rgbToHex(r, g, b):
    return '#%02x%02x%02x' % (int(r*255), int(g*255), int(b*255))

def hexToRgb(value):
    value = value.lstrip('#')
    lv = len(value)
    return tuple(int(value[i:i + lv // 3], 16)/255 for i in range(0, lv, lv // 3))


if drawBot: translate(0, height()-h)

with open(myFileName, "r", encoding='utf-8') as myFile:
    myReader = csv.reader(myFile)
    for rowNumber, row in enumerate(myReader):
        
        myCommand = 'merge.js'
        if rowNumber == 0:
            headers = row
            continue
        if True:
            for myColNumber, myCol in enumerate(row):
                if myColNumber == 0:
                    myFileName = myCol
                    continue
                else:
                    myColor = myCol
                if drawBot: fill(*hexToRgb(myColor))
                if drawBot: rect(0, 0, w, h)
                if drawBot: translate(w)
                if myColor[0] != '#':
                    myColor = '#' + myColor
                myCommand += ' ' + headers[myColNumber] + myColor
            if drawBot: fill(0)
            if drawBot: text(myFileName, (20, 0))
            myCommand += ' ' + myFileName
            
            print(myCommand)
            os.system(myCommand)
        if drawBot: translate(0, -h)
        