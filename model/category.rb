require 'mongoid'

class Category
  include Mongoid::Document
  field :name
  embeds_many :items
end
