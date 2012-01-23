class Map
  centre: (coordinates, zoomLevel) ->
    po = org.polymaps
    geoJson = po.geoJson()

    # hacking in ajax call for first version
    console.log 'start'
    offices = {}
    $.ajax
      url:'/offices/123'
      success: (data)->
        console.log data
        offices = data 

    console.log offices 
    console.log [{"geometry": {"type": "Point", "coordinates": [[-4.240532511128865, 55.891926951654455], [-4.238934645983739, 55.891956028400834]]}, "type": "Feature", "id": 6718, "properties": {"IDENTIFIER": "2602840669377", "CODE": 6140, "NAME": ""}}]
    console.log [
      'geometry':
        'type':'Point'
        'coordinates':[[-4.240532511128865, 55.891926951654455], [-4.238934645983739, 55.891956028400834]]
      'type':'Feature'
      'id':6718
      'properties':
        'IDENTIFIER':'2602840669377'
        'CODE':6140 
        'NAME':'' 
    ]
    map = po.map()
            .container(document.getElementById("map")
            .appendChild(po.svg("svg")))
            .center(coordinates)
            .zoom(zoomLevel)
            .add(po.interact())
            .add(po.image().url(po.url("http://{S}tile.cloudmade.com" + "/1a1b06b230af4efdbb989ea99e9841af" + "/998/256/{Z}/{X}/{Y}.png").hosts([ "a.", "b.", "c.", "" ])))
            .add(geoJson.features([{"geometry": {"type": "Point", "coordinates": [-0.125307, 51.515731]}, "type": "Feature", "id": 6718, "properties": {"IDENTIFIER": "2602840669377", "CODE": 6140, "NAME": ""}}])) 
    #         .add(geoJson.features(offices))       
# expose a namespace for external use
root = global ? window
root.Map = Map