window.Map = 
  class Map
    constructor: (@mapElement) -> 

    centre: (region, offices) ->
      po = org.polymaps
      geoJson = po.geoJson()
      map = po.map()
              .container(@mapElement.appendChild(po.svg("svg")))
              .center
                lat: region.lat
                lon: region.long
              .zoom(region.zoomLevel)
              .add(po.interact())
              .add(po.image().url(po.url("http://{S}tile.cloudmade.com" + "/1a1b06b230af4efdbb989ea99e9841af" + "/998/256/{Z}/{X}/{Y}.png").hosts([ "a.", "b.", "c.", "" ])))
              .add(geoJson.features(offices))       
