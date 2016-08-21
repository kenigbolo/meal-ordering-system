# MEAL ORDERING SYSTEM
[![Build Status](https://travis-ci.org/kenigbolo/meal-ordering-system.png)](https://travis-ci.org/kenigbolo/meal-ordering-system) [![CircleCI](https://circleci.com/gh/kenigbolo/meal-ordering-system.svg?style=svg)](https://circleci.com/gh/kenigbolo/meal-ordering-system) [![Code Climate](https://codeclimate.com/repos/57b8e1e0edd8a04481002e99/badges/53429bed36d5f1c5dbb2/gpa.svg)](https://codeclimate.com/repos/57b8e1e0edd8a04481002e99/feed) [![Coverage Status](https://coveralls.io/repos/github/kenigbolo/meal-ordering-system/badge.svg?branch=master&bust)](https://coveralls.io/github/kenigbolo/meal-ordering-system?branch=master)


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

##License

The MIT License (MIT)

Copyright (c) 2016 Kenigbolo

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.