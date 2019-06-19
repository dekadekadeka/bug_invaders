class GameSerializer < ActiveModel::Serializer
    has_many :comments
    attributes :id, :user_id, :score
end