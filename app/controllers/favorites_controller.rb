class FavoritesController < ApplicationController
    def new
        @favorite=Favorite.new
    end

    def index
        render json: Favorite.all.to_json
    end
    
    
    def create
        @favorite = Favorite.create(strong_params)
        if @favorite.valid?
            @favorite.save
            render json: @favorite, status:200
        else
            render json: @favorite.errors, status:400
        end
    end

    # def show
    #     @favorite=Favorite.find(params[:id])
    # end

    private

    def strong_params
        params.require(:favorite).permit(:user_id,:image, :name, :location, :tuition, :overview, :website)
    end

end
