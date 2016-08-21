# MEAL ORDERING SYSTEM
[![Build Status](https://travis-ci.org/kenigbolo/meal-ordering-system.png)](https://travis-ci.org/kenigbolo/meal-ordering-system) [![CircleCI](https://circleci.com/gh/kenigbolo/meal-ordering-system.svg?style=svg)](https://circleci.com/gh/kenigbolo/meal-ordering-system) [![Coverage Status](https://img.shields.io/coveralls/jekyll/jekyll.svg)](https://coveralls.io/github/kenigbolo/meal-ordering-system?branch=master) [![Code Climate](https://codeclimate.com/repos/57b8e1e0edd8a04481002e99/badges/53429bed36d5f1c5dbb2/gpa.svg)](https://codeclimate.com/repos/57b8e1e0edd8a04481002e99/feed)


A single page application (SPA) that coordinates meal ordering for Company employees

##Getting Started

* Clone the application with ```git clone https://github.com/kenigbolo/meal-ordering-system.git```

##Dependencies

* Ruby version 2.2.1 and above
* rails 5.0.0

Once you have those two, you can then run your command line and navigate into the project's folder and then run:

* Run ```bundle install``` to install all other dependencies
* Run ```rake db:migrate```
* Run ```rake db:seed ```

## Running The Server

Due to the use of the ```figaro gem``` for environment variables used in omniauth the following should be performed

* Download the application.yml file [here](https://www.dropbox.com/s/lby7uq1tsbpqyvk/application.yml?dl=0)
* Put the downloaded ```application.yml``` file into the ```config``` folder

You can then run ```rails s``` and visit the page on the browser by typing ```localhost:3000```

##Running The Specs
After all the setting up as mentioned above, you can run the tests. The tests are driven by rspec, capybara and selenium. You can get them fired up by running the following command from the terminal.

```rspec spec```

or

```bundle exec rspec```

##Application Features

* Authentication (Log in using OAuth (Facebook or Github))
* Creating new order
* Adding meal to order
* Changing order's status
* Viewing list of orders