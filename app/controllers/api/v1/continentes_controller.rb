module Api
  module V1
    class ContinentesController < ApplicationController
      def index
        continentes = Continente.all
        render json: continentes, status: :ok
      end
    
      def show
        continentes = Continente.find(params[:id])
        render json: continentes, status: :ok
      end
    
      def create
        continente = Continente.new(parametrosContinente)
        if continente.save
          render json: continente, status: :ok
        else
          render json: continente.errors, status: :unprocessable_entity
        end
      end
    
      def update
        continente = Continente.find(params[:id])
        if continente.update_attributes(parametrosContinente)
          render json: Continente, status: :ok
        else
          render json: continente.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        continente = Continente.find(params[:id])
        if continente.destroy
          render json: continente, status: :ok
        else
          render json: continente.errors, status: :unprocessable_entity
        end
      end

      private
      def parametrosContinente
        params.permit(:denominacion, :imagen)
      end
    end
  end
end

