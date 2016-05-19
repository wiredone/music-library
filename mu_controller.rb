require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require "sinatra/reloader"
require_relative('models/album')

##creating a route
get '/hi' do
  "Hello WOrld"
end

get '/albums/new' do
  #erb( :new )
end

get '/albums' do
  @albums = Album.all
  erb ( :'album/index' )
end

post '/albums' do

#  @album = Album.new(params)
#  @album.save()
#  erb ( :create )
 end


get '/albums/:id' do
#  @album = Album.find( params[:id] ) #we get the id from the url sinatra hash
#  erb( :show )
end

get '/albums/:id/edit' do
#  @album = Album.find( params[:id] )
#  erb ( :edit )
end

put '/albums/:id' do
#  @album = Album.update( params )
#  redirect to ("/albums/#{params[:id]}")
end

delete '/albums/:id' do
#  Album.destroy( params[:id])
#  redirect to('/albums')
end
