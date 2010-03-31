Phat
----------

An asynchronous sample Rails app designed to run in thin.

Phat comes pre-configured to use Fiber-enabled asynchronous libraries for maximum scalability:
em_postgresql, memcache-client, em-resolv-replace and em-http-request.

Usage
==========

You must be running Ruby 1.9.x.

You'll need to initialize the application's gem bundle:

    gem install bundler
    bundler install --relock

Now just start the server:

    thin -D start