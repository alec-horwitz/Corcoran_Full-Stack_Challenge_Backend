Disclaimer:
--------------------
This code and readme was implemented and tested macOS High Sierra Version 10.13.6 exclusively and as such compatibility with other operating systems is unknown.

Requires:
--------------------
 * Ruby 2.3.3 or greater


Setup:
------------------------

Fork this repository and clone it to your computer.

Open up a terminal window and do the following:

Navigate to the directory that this read me resides in and run the following commands in terminal (you may need an admin permissions for some of these commands):

 * "gem install bundler" if you don't have bundler installed yet
 * "bundle install" or if that doesn't work try "sudo ARCHFLAGS="-arch x86_64" bundle install" to install all dependencies
 * "rails db:migrate" to start the database
 * "rails db:seed" to seed the database with stock data
 * "rails s" to start the server on localhost:3000

Make sure it is running on port 3000 and you are ready to go.


Endpoints:
---------------------

Now you can make the following api requests:

* Making a get request to "http://localhost:3000/api/v1/presidents" will give you a unsorted hash of all presidents.

* Making a get request to "http://localhost:3000/api/v1/presidents/ascending" will give you a hash of all presidents sorted in ascending order by name.

* Making a get request to "http://localhost:3000/api/v1/presidents/descending" will give you a hash of all presidents sorted in descending order by name.
