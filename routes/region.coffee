exports.Region = (@test)->
  test = @test || {}

  getRegion:(req, res) ->
    res.send
      'lat':1
      'long':2
      'zoomLevel':2
      'regionName':'Europe'

