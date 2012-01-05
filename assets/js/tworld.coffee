#= require "polymaps/polymaps"
#= require "jquery/jquery.min"
#= require "map"

europeRegionCoordinates =
  lat: 52.268157
  lon: 2.548828

europeZoomLevel = 6.5

$( ->
  map = new Map
  map.centre(europeRegionCoordinates, europeZoomLevel)
)