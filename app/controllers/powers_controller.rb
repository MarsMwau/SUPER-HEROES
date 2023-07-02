class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        powers = Power.all
        render json: powers
      end
    
    def show
        power = find_power
        render json: power 
    end

    def update
        power = Power.find_by(id: params[:id])
        if power
          if power.update(power_params)
            render json: power
          else
            render json: { errors: power.errors.full_messages }, status: :unprocessable_entity
          end
        else
          render json: { error: "Power not found" }, status: :not_found
        end
      end

    private

    def find_power
        Power.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Power not found" }, status: :not_found
    end

    def power_params
        params.require(:power).permit(:description)
    end

end
