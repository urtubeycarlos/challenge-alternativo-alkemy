module Api
  module V1
    class ContinentesController < ApplicationController
      before_action :set_continente, only: [:show, :update, :destroy]
      
      def index
        @continentes = Continente.all
        render json: @continentes, status: :ok
      end
    
      def show
        render json: @continente, status: :ok
      end
    
      def create
        puts "Parametros: #{params}"
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

      def set_continente
        @continente = Continente.find(params[:id])
      end
    end
  end
end

