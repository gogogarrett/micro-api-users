require 'grape'
require 'roar'
require 'representable/json/collection'
require 'grape/roar'

module UsersRepresenter
  include Grape::Roar::Representer
  include Representable::JSON::Collection

  items extend: UserRepresenter
end
