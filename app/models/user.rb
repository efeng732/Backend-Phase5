class User < ApplicationRecord
    has_many :goals
    has_many :expenses
    has_secure_password

    validates :username, presence: true 
    validates :username, uniqueness: true 
    validates :password, presence: true 

end
