class SetList < Sinatra::Base

  get '/' do
    erb :"songs/welcome"
  end

  get '/songs' do
    @songs = Song.all.includes(:playlist)
    erb :"songs/index"
  end

  get '/songs/new' do
    erb :'songs/new'
  end

  post '/songs' do
    @songs = Song.create(params[:song])
    redirect '/songs'
  end

  get '/songs/:id' do
    @song = Song.find(params[:id])
    erb :'songs/show'
  end

end
