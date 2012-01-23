#= require "polymaps/polymaps"
#= require "jquery/jquery.min"
#= require "map"

europeRegionCoordinates =
  lat: 52.268157
  lon: 2.548828

europeZoomLevel = 6.5

loadMap = (offices) -> 
  (new Map).centre(europeRegionCoordinates, europeZoomLevel, offices)

$( ->
  $.getJSON '/offices/123', (offices) -> loadMap(offices)
)