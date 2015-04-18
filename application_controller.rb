require 'bundler'

Bundler.require

require_relative "models/moods.rb"
class MyApp < Sinatra::Base

  get '/' do
  	@moods_arr = Moods.new.moods
  	puts @moods_arr.class
  	erb :index

  end

end