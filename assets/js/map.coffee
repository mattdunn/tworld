class Map
  centre: (coordinates, zoomLevel) ->
    po = org.polymaps
    geoJson = po.geoJson()
    map = po.map()
            .container(document.getElementById("map")
            .appendChild(po.svg("svg")))
            .center(coordinates)
            .zoom(zoomLevel)
            .add(po.interact())
            .add(po.image().url(po.url("http://{S}tile.cloudmade.com" + "/1a1b06b230af4efdbb989ea99e9841af" + "/998/256/{Z}/{X}/{Y}.png").hosts([ "a.", "b.", "c.", "" ])))
    map.add geoJson.url("line.json")
# expose a namespace for external use
root = global ? window
root.Map = Map