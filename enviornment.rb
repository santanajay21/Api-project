#require all of our files so that they can talk to each other 

require 'bundler'
Bundler.require 

require 'pry'

require_relative "./lib/api"
require_relative "./lib/cli"
require_relative "./lib/meals"
