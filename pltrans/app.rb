require 'sinatra'
require 'pig_latin'

set :bind, '0.0.0.0'

get '/translate' do
  erb :translate
end

post '/translate' do
  puts params
  @word = params[:translator]
  @translated = PigLatin.translate(@word)
  erb :result
end