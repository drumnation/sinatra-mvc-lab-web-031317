require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    status 200
    erb :user_input
  end

  post '/piglatinize' do
    status 200
    pig_latinizer = PigLatinizer.new
    @user_sentence = pig_latinizer.to_pig_latin(params[:user_phrase])
    erb :results
  end

end
