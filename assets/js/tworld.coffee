#= require "polymaps/polymaps"
#= require "jquery/jquery.min"

europeRegionCoordinates ={lat: 52.268157, lon: 2.548828}
europeZoom = 6.5

po = org.polymaps
map = po.map()
        .container(document.getElementById("map")
        .appendChild(po.svg("svg")))
        .center(europeRegionCoordinates)
        .zoom(europeZoom)
        .add(po.interact())

map.add po.image().url(po.url("http://{S}tile.cloudmade.com" + "/1a1b06b230af4efdbb989ea99e9841af" + "/998/256/{Z}/{X}/{Y}.png").hosts([ "a.", "b.", "c.", "" ]))