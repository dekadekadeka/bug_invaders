class Api::V1::CommentsController < ApplicationController
    def index
        @comments = Comment.all
        render json: @comments
    end

    def create
        @comment = Comment.new(comment_params)
        if(@comment.save)
            render json: @comment
        else
            render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def update
        @comment = Comment.find(params[:id])
        if (@comment.update(comment_params))
            render json: @comment, status: :accepted
        else
            render json: { errors: @comment.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :content, :game_id)
    end
end
