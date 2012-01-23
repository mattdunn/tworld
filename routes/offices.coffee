exports.Offices = ()->
  getOffice:(req, res) ->
    res.send [
      'geometry':
        'type':'Point'
        'coordinates':[-0.125307, 51.515731]
      'type':'Feature'
      'id':6718
      'properties':
        'IDENTIFIER':'2602840669377'
        'CODE':6140 
        'NAME':''
    ]