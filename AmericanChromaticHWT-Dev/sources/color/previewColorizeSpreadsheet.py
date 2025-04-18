#place this script in same folder as csv output with file name on line 3
#drag it onto DrawBot and run
# 'Color font generator demo - Sheet1.csv'

import csv
import os
myFileName = 'HWTAmericanChromaticHexValues-Main.csv'

h = 100
w = 50
nameColWidth = 300

drawBot = False
try:
    fill
    drawBot = True
except:
    def savedState():
        pass
    pass

def rgbToHex(r, g, b):
    return '#%02x%02x%02x' % (int(r*255), int(g*255), int(b*255))

def hexToRgb(value):
    value = value.lstrip('#')
    lv = len(value)
    return tuple(int(value[i:i + lv // 3], 16)/255 for i in range(0, lv, lv // 3))



with open(myFileName, "r", encoding='utf-8') as myFile:
    myReader = csv.reader(myFile)
    
    newPage(1000, 6000)
    if drawBot: translate(20, height()-20-h)

    
    for rowNumber, row in enumerate(myReader):
        
        myCommand = 'merge.js'
        if rowNumber == 0:
            headers = row
            continue
        with savedState():
            if drawBot: fill(0)
            if drawBot: fontSize(12)
            if drawBot: text(row[0], (0, 0))
            if drawBot: translate(nameColWidth)
            
            myColors = []
            for myColNumber, myCol in enumerate(row):
                if myColNumber == 0:
                    myFileName = myCol
                    continue
                else:
                    myColor = myCol
                if drawBot: fill(*hexToRgb(myColor))
                if drawBot: rect(0, 0, w, h)
                myColors.append((headers[myColNumber], myColor))
                if drawBot: translate(w)
                myCommand += ' ' + headers[myColNumber] + myColor
            myCommand += ' ' + myFileName
            
            for myLayerName, myLayerColor in myColors:
                fill(*hexToRgb(myLayerColor))
                font(myLayerName, h)
                text('ABC', (50, 0))
            
            print(myCommand)
            #os.system(myCommand)
        translate(0, -h)
        