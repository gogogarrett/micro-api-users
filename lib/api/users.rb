require 'grape'
require './representers/user_representer'
require './representers/users_representer'
require './models/user'

module Api
  class Users < Grape::API
    format :json
    formatter :json, Grape::Formatter::Roar

    before do
      header "Access-Control-Allow-Origin", "*"
    end

    resources :users do
      get do
        present User.all, with: UsersRepresenter
      end

      get ":id" do
        present User.find(params[:id]), with: UserRepresenter
      end
    end
  end
end
