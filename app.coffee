#!/usr/bin/env coffee

#app.listen process.env.PORT or 3000

require('zappa') ->
  @enable 'default layout'
  @use 'static'
  @app.use require('connect-assets')()
  
  @get '/': ->
    @render 'index'
    
  @view index: ->
    @title = 'TWorld'
    @stylesheets = ['/css/main']
    @scripts = ['/js/jquery/jquery.min', '/js/polymaps/polymaps', '/js/map', '/js/tworld']
    
    js('tworld')
    div id: 'map'
    
  region = require("./routes/region.coffee").Region()
  offices = require("./routes/offices.coffee").Offices()

  @get "/region/:id": region.getRegion
  
  @get "/offices": offices.getOffice