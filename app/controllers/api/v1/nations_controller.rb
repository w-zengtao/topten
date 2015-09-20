module Api
  module V1
    class NationsController < BaseController

      #  默认是列出所有的省份
      def index
        @nations = Nation.list_provinces
        render json: { nations: @nations }
      end

      def show
        @nation = Nation.find_by(id: params[:id])
        render json: { nation: @nation }
      end

      def list_cities
        @nations = Nation.list_cities params[:province_id]
        render json: { nations: @nations }
      end

      def list_districts
        @nations = Nation.list_districts params[:city_id]
        render json: { nations: @nations }
      end
    end
  end
end