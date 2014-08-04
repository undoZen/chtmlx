chtmlx
======

CoffeeScript version of [htmlx](https://github.com/undoZen/htmlx) module.

Help you separate html part from a react component.

##Installation

    npm install chtmlx

##Usage

should be used with webpack and coffee-loader

    #hello-component.coffee
    Hello = React.createClass
      render: require('coffee!chtmlx!./template.chtmlx')

    #template.chtmlx
    Mr = require('coffee!chtmlx!./mr.chtmlx').bind(this)
    <p>
      Hello, <Mr>Wang</Mr>
    </p>

##Lisence
MIT
