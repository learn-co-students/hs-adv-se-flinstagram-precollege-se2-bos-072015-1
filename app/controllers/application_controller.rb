
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

	post '/login' do
		@user = User.find_by(name: params[:username])
		session[:user] = @user
		redirect to "/users/#{@user.id}"
	end

	get '/users/:id' do
		@user = User.find(params[:id])
		erb :"users/show"
	end

	get '/photos' do
		@photos = Photo.all
		erb :"photos/index"
	end

	get '/photos/new' do
		@photos = Photo.all
		erb :"photos/new"
	end

	post '/addphoto' do
		@photo = Photo.find(params[:photo_id])
		@user = session[:user]
		@photo.update(user: session[:user])
		binding.pry
		redirect to "/users/#{@user.id}"
	end
end