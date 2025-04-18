# Hamilton Wood Type Development


## Color Fonts

Before you can generate color fonts, you'll need the following tools installed:

* [fonttools](https://github.com/fonttools/fonttools)
* [Node.js and npm](https://nodejs.org/en/download/)

Once that's done, please clone this repository:

```
git clone git@github.com:the-type-founders/HamiltonWood-Dev.git
```

Then install the npm dependencies:

```
npm install
```

Once that's done, you can build the color fonts by running:

```
npm run build
```

This will build all the color fonts already in the repository. If you want to add a new color font (or a new variation of an existing color font, open `build.sh` and add a new section for your font. Generally speaking you need three lines for each font:

```
# Change to the family directory
cd <directory-name>

# Call merge.js, colorize.js, or palette.js with appropriate values
merge.js <base-layer.ttf>#color <first-layer.ttf>#color <output.ttf>

# Change back to the root directory
cd <root-directory>
```

See the [colorize](https://github.com/the-type-founders/colorize) for detailed instructions for each color tool.