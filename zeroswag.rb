# sincapun.rb
require 'json'
require 'mongoid'
require 'sinatra'
require 'better_errors'
require_relative 'model/init'

Mongoid.load!("mongoid.yml")

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

configure :production do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

class Zeroswag < Sinatra::Base

  get '/' do
    content_type :json
    Category.first.items.sample.to_json
  end

end
