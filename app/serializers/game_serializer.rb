class GameSerializer < ActiveModel::Serializer
    belongs_to :user
    has_many :comments
    attributes :id, :user, :user_id, :score
end