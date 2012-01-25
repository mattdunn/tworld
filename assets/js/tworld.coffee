#= require "polymaps/polymaps"
#= require "jquery/jquery.min"
#= require "map"

loadRegion = (callback) ->
  $.getJSON '/region/Europe', (region) -> callback(region)

loadOffices = (callback) ->
   $.getJSON '/offices/', (offices) -> callback(offices)

loadMap = (region, offices) -> 
  (new Map(document.getElementById("map"))).centre(region, offices)

$( ->
  loadRegion (region) ->
    loadOffices (offices) ->
      loadMap region, offices
)