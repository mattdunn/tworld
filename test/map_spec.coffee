zombie = require("zombie")
assert = require("assert")

describe "Given I am a European User of TWorld", ->
  beforeEach ->
    @server = require('../app.coffee')
    @locale = "#europe"

  describe "when I visit the site", ->
    it "should return 200OK", (done) ->
      zombie.visit "http://localhost:3000##{@locale}", (e, browser, status) ->
        status.should.equal(200)
        done()

