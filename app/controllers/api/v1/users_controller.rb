module Api
  module V1
    class UsersController < BaseController

      def index
        render json: { user: 'test' }
      end

      def create
        @user = User.find_by_email(params[:user][:email])
        if @user
          return render json: { error: '当前邮箱已经被注册了' }
        end

        @user = User.new(user_params)

        if @user.save
          render json: { user: @user }, status: 201
        else
          render json: { error: '新建用户失败 ' }, status: 400
        end
      end

      def update
        @user = User.find_by(id: params[:id])
        if @user.update(user_params)
          render json: { user: @user }, status: 201
        else
          render json: { error: { message: "update failed" } }, status: 400
        end
      end

      def show 

      end

      def destroy

      end


      private

      def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
      end
    end
  end
end