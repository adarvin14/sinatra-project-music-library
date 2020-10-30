class User < ActiveRecord::Base
    has_secure_password
    has_many :songs, through artist
    has_many :artists, through :library
    validates :username, :password, presence: true
    validates :username, uniqueness: true
end