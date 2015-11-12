#!/usr/bin/env ruby
require 'sinatra'
require 'erb'

# Basic routing rules
# Basic page load route. This loads the web app and its FE dependencies
get '/' do
  erb :index
end

# This is the POST hook for submissions to the spam processor.
post '/analyze' do
  'Hi there'
end
