require 'rubygems'
require 'sinatra'

require 'haml'

before do
  response.headers['Cache-Control'] = 'public, max-age=31557600'
end

get '/' do
  @loc = 'application'

  haml :application
end

get '/download' do
  haml :download
end

get '/app/download' do
  redirect '/download'
end

get '/blog' do
  redirect 'http://blog.getcloudapp.com'
end

get '/terms' do
  haml :terms
end

get '/privacy' do
  haml :privacy
end
