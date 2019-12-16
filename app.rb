require 'sinatra/base'
require_relative './lib/person'

class SecretSanta < Sinatra::Base
  get '/' do
    'Welcome to Secret Santa!!!'
    erb :index
  end


  post '/names' do

    $person_1 = Person.new(params[:name], params[:email])

    redirect '/santa_list'
  end

  get '/santa_list' do
    @name = $person_1.name
    @email = $person_1.email
    erb :santa_list
  end

run! if app_file == $0
end
