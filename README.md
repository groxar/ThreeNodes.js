This fork enables the use with newer node versions

#ThreeNodes.js
![screenshot_version_0.1.0](public/misc/screenshot1.jpg)  

This is an attempt to make something like "vvvv" in javascript, html and webgl.

Live demo: http://idflood.github.com/ThreeNodes.js/

## Key principles
- modular
- creating a custom "node" must be as easy as possible
- should be possible to switch interface for live performance (selection of buttons/toggle)

## Development setup
This will automatically compile coffescript files to javascript, sass to css and haml to html.

1. install node.js 0.6.x (http://nodejs.org/) 
2. install npm (https://github.com/isaacs/npm)
3. install coffeescript (http://jashkenas.github.com/coffee-script/)
4. install jade globally: sudo npm install -g jade
5. cd in ThreeNodes
6. npm install -d

## Usage
1. cd in ThreeNodes
2. node build.js
3. coffee server.coffee
3. with firefox or chrome go to http://localhost:3000/
4. allow this site to create popups (for webglrender node)

## Build annotated sources
1. install docco and dependancies
2. docco src/scripts/threenodes/*.coffee src/scripts/threenodes/*/*.coffee
3. cp docs/App.html docs/index.html

## Known limitations
- It is recommended to always access ThreeNodes.js from http since chrome has a highly restrictive file access when using file://. (see http://code.google.com/p/chromium/issues/detail?id=40787)

## Howto create a simple scene
First, create a webglrenderer node. Then add a scene and connect it to the "scene" of the webgl node. On the scene children you would connect a "merge" and to it a mesh. With that there should be a red cube showing in the renderer window.
