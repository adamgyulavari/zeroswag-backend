require 'mongoid'

class Item
  include Mongoid::Document
  embedded_in :category
  field :title
  field :subtitle
  field :description
end
