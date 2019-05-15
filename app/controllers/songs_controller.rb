# post '/songs' do
#   flash[:message] = "Successfully created song."
#   redirect to("/songs/#{@song.slug}")
# end
class SongsController < ApplicationController
  use Rack::Flash
  
  get '/songs' do
    @songs = Song.all
    erb :"/songs/index"
  end
  
  get '/songs/new' do
    erb :"/songs/new"
  end
  
  post '/songs' do
    @song = Song.create(params["Name"])
    
end