class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        heros = Hero.all
        render json: heros
      end
    
    def show
        hero = Hero.includes(:powers).find(params[:id])
        render json: hero, include: [:powers]
    end
    
    private
    
    def hero_params
        params.require(:hero).permit(:name, :super_name)
    end

    def render_not_found_response
        render json: { error: "Hero not found" }, status: :not_found
    end

end
