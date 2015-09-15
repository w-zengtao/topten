module Api
  module V1
    class BaseController < ApplicationController
      # protect_from_forgery with: :null_session

      before_action :authenticate_user_from_token!
      private

      def authenticate_user_from_token!
        token = params[:token].presence
        user = token && User.find_by_authentication_token(token.to_s)

        if user
          sign_in user
        end
      end
    
    end
  end
end