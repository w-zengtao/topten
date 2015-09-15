module Api
  module V1
    class UsersController < BaseController

      def index
        render json: { user: 'test' }
      end
    end
  end
end