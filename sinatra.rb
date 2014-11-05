require 'bundler/setup'
require 'pry'
require 'sinatra/base'
require 'sinatra/json'
require 'json'
require 'fileutils'

#Inherits from Sinatra::Base class

class App < Sinatra::Base
WORDS_FILE = "words.txt"
  get '/' do
    'hello'
  end 
#  get '/vlad' do
#    json :name => 'vlad', :date => Time.now
#  end
  get '/words' do
    words = File.open( WORDS_FILE, 'r' ).map do |line|
      line.chomp
    end

    json words
  end
  post '/words' do
    word = request.body.read
    File.open( WORDS_FILE, 'a' ) do |f|
      f.puts word
    #binding.pry
    end

  "OK"
  end
  delete '/words/:word' do
    word = params[:word]

    words = File.open( WORDS_FILE, 'r' ).map do |line|
      line.chomp!

      if line == word
         nil
      else
         line
      end

    end

    words.compact!

   # binding.pry
    File.open( WORDS_FILE, 'w' ) do |f|
      f.write words.join("\n")
    end
    "OK"
  end

end
FileUtils.touch App::WORDS_FILE
App.run!
