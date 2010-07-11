require 'rubygems'
require 'sinatra'

require 'haml'

get '/' do
  haml :application
end

get '/download' do
  haml :download
end

get '/app/download' do
  redirect '/download'
end

get '/terms' do
  haml :terms
end

get '/privacy' do
  haml :privacy
end
