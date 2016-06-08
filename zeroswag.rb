# sincapun.rb
require 'json'
require 'mongoid'
require 'sinatra'
require_relative 'model/init'

Mongoid.load!("mongoid.yml")

class Zeroswag < Sinatra::Base

  get '/' do
    content_type :json
    Category.first.items.sample.to_json
  end

end
