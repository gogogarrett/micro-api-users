require 'grape'

class User
  def initialize(id, name)
    @id, @name = id, name
  end

  def to_json
    {id: @id, name: @name}
  end
end

module Api
  class Users < Grape::API
    format :json

    resources :users do
      get do
        @users = {
          users: [
            User.new(1, 'Garrett').to_json,
            User.new(2, 'Jenny').to_json,
            User.new(3, 'Nick').to_json,
          ]
        }
      end

      get ":id" do
        @user = { user: User.new(1, 'Bob').to_json }
      end
    end

  end
end
