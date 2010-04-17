Phat
----------

An asynchronous sample Rails app designed to run in thin.

Phat comes pre-configured to use Fiber-enabled asynchronous libraries for maximum scalability:
em_postgresql, memcache-client and em-resolv-replace.

Usage
==========

You must be running Ruby 1.9.x.

You'll need to initialize the application's gem bundle:

    gem install bundler
    bundler install --relock

Now just start the server:

    thin -D start

Caveats
===========

The Rails database rake tasks do not use EventMachine.  Because of this, em_postgresql
will fall back to blocking behavior if EM is not running.

The Rails 2.3.5 database rake tasks hard code the supported list of adapters such that
"em_postgresql" is not supported.  You will need to edit rails-2.3.5/lib/tasks/databases.rake
and change all instances like so:

-     when "postgresql"
+     when /postgresql/


Author
==========

Mike Perham, http://mikeperham.com, http://twitter.com/mperham, mperham AT gmail.com