class HeroPowersController < ApplicationController
    def create
        hero_power = HeroPower.new(hero_power_params)
        if hero_power.save
          render json: hero_power.hero, include: [:powers]
        else
          render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        hero = find_hero
        if hero.destroy
          render json: { message: "Hero and associated powers successfully deleted" }, status: :ok
        else
          render json: { errors: hero.errors.full_messages }, status: :unprocessable_entity
        end
    end
    
    private
    
    def hero_power_params
        params.require(:hero_power).permit(:strength, :power_id, :hero_id)
    end

    def find_hero
        Hero.find(params[:id])
    end
end
