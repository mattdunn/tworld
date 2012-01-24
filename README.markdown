TWorld  [![Build Status](https://secure.travis-ci.org/mattdunn/tworld.png)](http://travis-ci.org/mattdunn/tworld)
=======

See your TWorks world in a whole new light.

http://tworld.heroku.com

How to deploy
-------------

* Install [heroku gem](http://devcenter.heroku.com/articles/node-js)
* git push heroku master

How to run
----------

* The app
  * npm install
  * nodemon server.js

* Tests
  * npm test

When developing
---------------

* When you pull from git, use the '-- rebase' option

License
-------

<a rel="license" href="http://creativecommons.org/licenses/by/3.0/">
  <img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/3.0/88x31.png" />
</a>
<br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 Unported License</a>.

To Do
-----

* manchester and hamburg offices missing
  * should prolly be another story

* npm test is broken locally

* figure out how to write tests for this stuff
  * coffee testing
  * sikuli or some such for screenshot based differences ui tests? how else do we test the map is where we say it should be?

* rename region resource to regions?

* do we need the properties in the offices json?

* how best to structure routes?
  * zappa?

* better looking map
  * blue marble look: .add(po.image().url("http://s3.amazonaws.com/com.modestmaps.bluemarble/{Z}-r{Y}-c{X}.jpg"))

* better looking point
  * should the marker be something other than a point?

* Makefile
  * We added css and js to --globals parameter to prevent test failures with mocha, should we just ignore leaks instead? (--ignore-leaks)

* layout.jade:
  * cleanup meta tags etc inc IE tests 

* layout.jade
  * could this be collapsed into index.jade, given this is a single page web app?
  * do the includes for simplegeo css and js using the function mechanism.

* Better favicon.ico than a dog?

* Automatically deploy from travis to heroku - possibly use [this?](https://github.com/travis-ci/travis-cli/blob/master/spec/travis/cli/config_spec.rb)