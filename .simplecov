require 'simplecov'
require 'coveralls'
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start do
   add_filter 'app/admin'
   add_filter 'app/channels'
   add_filter 'app/jobs'
   add_filter 'app/mailers'
   add_filter 'app/controllers/sessions_controller.rb'
   add_filter 'app/controllers/orders_controller.rb'
   add_filter 'app/secrets'   
end

