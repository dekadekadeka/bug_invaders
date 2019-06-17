class UserSerializer < ActiveModel::Serializer
    has_many :games
    has_many :comments
    attributes :id, :username, :email
end