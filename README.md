docker-ruby-web
===============

A base image for Ruby web apps, which assumes nginx and unicorn.

Usage
-----

    docker pull cxops/ruby-web

Building
--------

    git clone git@github.com:CXInc/docker-ruby-web.git
    cd docker-ruby-web
    
    # Bump this incremental ID for each change in the image
    docker build -t cxops/ruby-web:1 .
