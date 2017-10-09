class User < ApplicationRecord
    has_secure_password
    has_many :articles
    has_many :albums
    has_many :images
end
