rcov_plugin
===========

This is a simple rails plugin for Rails 3 that adds some useful rcov rake tasks.

    rake test:coverage                # Tests coverage on the entire application
    rake test:coverage:units          # Tests coverage for unit tests
    rake test:coverage:functionals    # Tests coverage for functional tests
    rake test:coverage:integration    # Tests coverage for integration tests

The task ends up creating a coverage folder with an html coverage report in it.

SHOW_ONLY is a comma-separated list of the files you'd like to see (although
you can only run functionals, you still see all the models and helpers which 
are 'touched'). Right now there are four types of files rake test:coverage 
recognizes: models, helpers, controllers, and lib. These can be abbreviated 
to their first letters:

    rake test:coverage SHOW_ONLY=models
    rake test:coverage SHOW_ONLY=helpers,controllers
    rake test:coverage SHOW_ONLY=h,c

Installing
=============
As of Rails 3, rake tasks can be distributed easily in plugins packaged as gems, and that's what we do here. So, to install rcov_plugin, simply do:

gem install rcov_plugin

or add the gem to your bundler Gemspec

gem "rcov_plugin"

JRuby Support
=============
rcov_plugin works great with JRuby.

If using JRuby, remember to run rake with it, like this:
    jruby -S rake test:coverage

Special thanks go to Leonard Borges ([http://www.leonardoborges.com](http://www.leonardoborges.com)) for getting the plugin working with JRuby.

Requirements
============

This plugin requires rails 3 and 

Using With Rails 2
============
This plugin worked with Rails 2 back in the day, and I've got a tag on the repo that you can use to install the old Rails 2 version. Use the following command:

    script/plugin install -r rails_2 git://github.com/commondream/rcov_plugin.git

Contributors
============
Special thanks go to all of the contributors to this plugin:

* leonardoborges
* dovadi
* baldowl
* archfear
* nragaz

License
=======
Copyright (c) 2008-2010 Alan Johnson

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

