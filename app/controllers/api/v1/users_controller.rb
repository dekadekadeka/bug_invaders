class Api::V1::UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(user_params)
        if(@user.save)
            render json: @user
        else
            render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def update
        @user = User.find(params[:id])
        if (@user.update(user_params))
            render json: @user, status: :accepted
        else
            render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

    private
    def user_params
        params.require(:user).permit(:username, :email)
    end
end
