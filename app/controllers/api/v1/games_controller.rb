class Api::V1::GamesController < ApplicationController
    def index
        @games = Game.all
        render json: @games
    end

    def create
        @game = Game.create(game_params)
        if (@game.save)
            render json: @game
        else
            render json: { errors: @game.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @game = Game.find(params[:id])
        @game.destroy
    end

    private

    def game_params
        params.require(:game).permit(:user_id, :score)
    end
end
