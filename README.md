SpreeLocations
==============

Spree Locations is an extension (currently for Spree 0.60.3) to extend adinistration of physical locations and their contact information as well as showing this on the site in a Google Map.

This utilizes the gem gmaps4rails (https://github.com/apneadiving/Google-Maps-for-Rails) for the mapping.

Installation
==============

Add gmaps4rails and this gem to your Gemfile, run bundle install, and then:

rails generate gmaps4rails:install
rake spree_locations:install



Copyright (c) 2012 Mark Linn, released under the New BSD License
