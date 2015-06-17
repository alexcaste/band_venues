Band + Venues

By Alexandar Castaneda

@ Epicodus Programming School, Portland, OR

GNU General Public License, version 3 (see below). Copyright (c) 2015 Alexandar Castaneda.

Description

Bands + Venues

This app allows user to add venues and bands/artists.  User can track what venues band has played at.  User can add, delete and edit band and venue info.  This was a assesment test.

Author

Alexandar Castaneda

Setup

This app was written in ruby '2.0.0'.

Clone this repo with

https://github.com/alexcaste/band_venues.git

Install and run: $ bundle

Start the database in another terminal bash: $ postgres

Create the databases and tables by changing directories into your new tracker-master folder then in the terminal run the following:

$ rake db:create

$ rake db:schema:load

Start the webserver:

$ ruby app.rb

In your web browser, go to http://localhost:4567

License Copyright (C) 2015 Alexandar Castaneda

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.
