module Api
  module V1
    class ContinentesController < ApplicationController
      before_action :set_continente, only: [:show, :update, :destroy]
      
      def index
        params = query_parametros_continente
        if params.keys.length > 0
          @continentes = Continente.filtro_query_params(params).includes(:paises)
        else
          @continentes = Continente.all.includes(:paises)
        end
      end
    
      def show
      end
    
      def create
        @continente = Continente.new(parametros_continente)
        if @continente.save
          render json: @continente, status: :ok
        else
          render json: @continente.errors, status: :unprocessable_entity
        end
      end
    
      def update
        if @continente.update(parametros_continente)
          render json: @continente, status: :ok
        else
          render json: @continente.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        if @continente.destroy
          render json: @continente, status: :ok
        else
          render json: @continente.errors, status: :unprocessable_entity
        end
      end

      private
      def parametros_continente
        params.require(:continente).permit(:denominacion, :imagen)
      end

      def query_parametros_continente
        params.permit(:denominacion)
      end

      def set_continente
        @continente = Continente.find(params[:id])
      end
    end
  end
end

