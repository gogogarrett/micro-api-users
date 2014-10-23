require 'grape'
require 'roar'
require 'roar/representer/json'
require 'grape/roar'

module UserRepresenter
  include Roar::Representer::JSON
  include Grape::Roar::Representer

  property :id
  property :name
  property :age
  property :snippet
end
