module Api
  module V1
    class UserTokensController < BaseController

      skip_before_action :authenticate_user_from_token!
      # 登录
      def create
        user = User.find_for_database_authentication(params[:user])

        return render json: { error: 'user not found' }, status: 401 unless user

        if user.valid_password?(params[:user][:password])
          sign_in("user", user)
          user.ensure_authentication_token

          # 这里把看情况返回用户需要的数据
          render json: { token: user.authentication_token, id: user.id }
        else
          render json: { error: 'password error' }, status: 404
        end
      end

      # 注销 这个需要校验token 同时更换新的token
      # TODO 
      def destroy
        user = User.find_by_authentication_token(params[:token])
        if user
          user.restore_authentication_token! # 这个得自己重写了
          sign_out user
          render json: { status: 'sign_out success #{user.id}' }
        end
      end

      private

      def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
      end
    end
  end
end