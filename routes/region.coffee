exports.Region = ()->
  getRegion:(req, res) ->
    res.send
      'lat': 52.268157
      'long': 2.548828
      'zoomLevel': 6.5