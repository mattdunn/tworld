exports.Offices = ()->
  getOffice:(req, res) ->
    res.send [
      'geometry':
        'type':'Point'
        'coordinates':[[-4.240532511128865, 55.891926951654455], [-4.238934645983739, 55.891956028400834]]
      'type':'Feature'
      'id':6718
      'properties':
        'IDENTIFIER':2602840669377
        'CODE':6140 
        'NAME':''
    ] 
      