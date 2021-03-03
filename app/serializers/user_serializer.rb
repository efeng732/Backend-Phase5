class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :bio 
  has_many :expenses 
  has_many :goals 
end
