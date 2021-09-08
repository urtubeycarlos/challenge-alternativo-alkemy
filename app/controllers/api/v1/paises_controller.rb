module Api
  module V1
    class PaisesController < ApplicationController
      before_action :set_pais, only: [:show, :update, :destroy]

      def index
        @paises = Pais.all
        render json: @paises, status: :ok
      end
    
      def show
        render json: @pais, status: :ok
      end
    
      def create
        @pais = Pais.new(parametros_pais)
        if @pais.save
          render json: @pais, status: :ok
        else
          render json: @pais.errors, status: :unprocessable_entity
        end
      end
    
      def update
      end
    
      def destroy
      end

      private
      def parametros_pais
        params.require(:pais).permit(:cantHabitantes, :denominacion, :imagen, :superficie, :continente_id)

      def set_pais
        @pais = Pais.find(params[:id])
      end
    end    
  end
end
