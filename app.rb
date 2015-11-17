#!/usr/bin/env ruby
require 'sinatra'
require 'erb'
require 'json'
require 'ankusa'
require 'ankusa/mongo_db_storage' #Change back to mongo when I have a clue on how to fix it
require 'appres/spam'

# Initalize MongoDB connection
file = File.read('config.json')
settings = JSON.parse(file)
storage = Ankusa::MongoDbStorage.new :host => settings['database']['host'], \
  :port => settings['database']['port'], :db => settings['database']['database_table']
#storage = Ankusa::MemoryStorage.new
c = Ankusa::NaiveBayesClassifier.new storage
spamObj = Spam.new(c)

# Basic routing rules
# Basic page load route. This loads the web app and its FE dependencies
get '/' do
  erb :index
end

# This is the POST hook for submissions to the spam processor.
post '/analyze' do
  'Hi there'
end
