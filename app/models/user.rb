class User < ApplicationRecord
    has_many :favorites

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true 


    def display_user_name
        return self.first_name.capitalize
    end

end
