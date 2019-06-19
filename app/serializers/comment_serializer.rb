class CommentSerializer < ActiveModel::Serializer
    belongs_to :user
    belongs_to :game
    attributes :id, :user_id, :content, :game_id
end