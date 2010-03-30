Static
======

Static is a super simple Rails CMS for Heroku.

- Code: <http://github.com/trevorturk/static/>
- Demo: <http://static.heroku.com/> # resets every 24 hours
- More: <http://wiki.github.com/trevorturk/static/> # add your site!


Screenshot
----------

![Screenshot](http://s3.amazonaws.com/almosteffortless/static.png)


Install
-------

Get the app running in your local development environment:

    gem install rails --version="2.3.5"
    git clone git://github.com/trevorturk/static.git
    cd static
    cp config/database.example.yml config/database.yml
    cp config/config.example.yml config/config.yml
    touch log/development.log
    rake gems:install
    rake db:create
    rake db:schema:load
    script/server
    open http://localhost:3000/


Deploy
------

Deploy the app to Heroku:

    gem install heroku
    heroku create
    git push heroku master
    heroku rake db:schema:load
    heroku open


Enable Uploads via Amazon S3
----------------------------

Provide your Amazon S3 credentials to enable uploads on Heroku:

    mate config/config.yml
    rake s3:create
    rake heroku:config


Contributors
------------

- Trevor Turk
- Charles Magid
- Keenan Brock


MIT License
-----------

Copyright (c) 2010 Trevor Turk

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.