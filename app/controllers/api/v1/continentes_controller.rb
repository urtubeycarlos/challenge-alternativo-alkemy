module Api
  module V1
    class ContinentesController < ApplicationController
      def index
        continentes = Continente.find();
      end
    
      def show
      end
    
      def create
      end
    
      def update
      end
    
      def delete
      end
    end
  end
end

