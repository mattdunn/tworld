TWorld  [![Build Status](https://secure.travis-ci.org/mattdunn/tworld.png)](http://travis-ci.org/mattdunn/tworld)
=======

See your TWorks world in a whole new light.

http://tworld.heroku.com

License
-------

<a rel="license" href="http://creativecommons.org/licenses/by/3.0/">
  <img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/3.0/88x31.png" />
</a>
<br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 Unported License</a>.

To Do
-----
* public/js/tworld.js
  * is a complete hack; need to figure out how to use coffeescript to compile js into assets, using something like:
    * https://github.com/TrevorBurnham/connect-assets or
    * http://epeli.github.com/node-pile/

  * when coffeescript is an option, rewrite so its not a kludgy, procedural script

* layout.jade:
  * cleanup meta tags etc inc IE tests 
  * resolve path to javascript includes in a smarter way (inc. getting away from platform specific path separators)
    * asset manager mentioned above should do this

* index.jade
  * same deal about resolving path to js assets as above

* assets/js/app.coffee
  * is sample code? delete?

* Better favicon.ico than a dog?