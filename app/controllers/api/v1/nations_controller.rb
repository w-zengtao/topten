module Api
  module V1
    class NationsController < BaseController

      #  默认是列出所有的省份
      def index
        @nations = Nation.provinces
        render json: { nations: @nations }
      end

      def show
        @nation = Nation.find_by(id: params[:id])
        render json: { nation: @nation }
      end


      #  TODO 这里也许使用一个 list_children 更加符合逻辑
      def list_cities
        @nations = Nation.cities params[:province_id]
        render json: { nations: @nations }
      end

      def list_districts
        @nations = Nation.districts params[:city_id]
        render json: { nations: @nations }
      end
    end
  end
end