
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'flatironrulz'
  end

	get '/' do
		erb :"index"
	end

	get '/users/:id' do
		@user = User.find(params[:id])
		erb :"users/show"
	end

	get '/photos' do
		@photos = Photo.all
		erb :"photos/index"
	end
end