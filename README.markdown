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

License
-------

<a rel="license" href="http://creativecommons.org/licenses/by/3.0/">
  <img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/3.0/88x31.png" />
</a>
<br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 Unported License</a>.

To Do
-----
* public/js/tworld.js
  * when coffeescript is an option, rewrite so its not a kludgy, procedural script
    * theres gotta be a better way of namespacing than putting Map into the root/global namespace (see map.coffee)

* consume coordinate rest endpoint instead of hardcoded endpoints

* Makefile
  * We added css and js to --globals parameter to prevent test failures with mocha, should we just ignore leaks instead? (--ignore-leaks)

* layout.jade:
  * cleanup meta tags etc inc IE tests 

* layout.jade
  * could this be collapsed into index.jade, given this is a single page web app?

* Better favicon.ico than a dog?

* Automatically deploy from travis to heroku - possibly use [this?](https://github.com/travis-ci/travis-cli/blob/master/spec/travis/cli/config_spec.rb)