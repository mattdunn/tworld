express = require("express")

app = module.exports = express.createServer()
app.configure ->
  app.set "views", __dirname + "/views"
  app.set "view engine", "jade"
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use app.router
  # app.use express.static(__dirname + )
  app.use require('connect-assets')()

app.configure "development", ->
  app.use express.errorHandler(
    dumpExceptions: true
    showStack: true
  )

app.configure "production", ->
  app.use express.errorHandler()

app.get "/" , (req, resp) -> resp.render 'index'

region = require("./routes/region.coffee").Region()
offices = require("./routes/offices.coffee").Offices()

app.get "/region/:id", region.getRegion
app.get "/offices/:id", offices.getOffice

app.listen process.env.PORT or 3000
console.log "Express server listening on port %d in %s mode", app.address().port, app.settings.env