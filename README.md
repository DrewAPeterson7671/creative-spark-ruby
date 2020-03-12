# _Creative Spark_

#### _Blog for creative musings of a particular artist, 3/11/2020_

#### By _**Drew Peterson**_

## Description

_Application to post articles and comments including CRUD functionality with authentication and admin permissions._

## Setup/Installation Requirements

* Ensure that you have the correct version of Ruby and Postgres installed
* Clone the project locally from github.
* Install Bundler if you do not already have it by running gem install bundler in the terminal.
* Run bundle install to manage gems; if you make additional changes to the Gemfile, you will need to run this command again.
* DATABASE INSTRUCTIONS - from the root directory of this project, run these commands:
*         rake db:create
*         rake db:migrate
*         rake db:test:prepare




## Known Bugs

_Need to automate tying user id to comments (db change, view change, controller change_
_remove user column from comments, edit views, edit controllers and edit seed to add users_
_Need to make only the author of a comment to edit a comment_
_Need to add delete to auther privileges (currently only admin)_
_Need to add comment dates_
_Need active storage for photos and media_
_Need pages for contact, channels for existing content series links_
_deleting comments throws error_




## Support and contact details

_Please contact me directly via email at drew.a.peterson@hotmail.com with any bug reports, questions, critique, or for any reason._

## Technologies Used

_Ruby 2.5.1, Postgres SQL, and PG, Pry, Bundler, Sinatra, rspec_

### License

*GPL*



* Copyright (c) 2020 **_Drew Peterson_**
