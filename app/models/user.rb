class User < ApplicationRecord
  has_many :posts
  belongs_to :profile
  has_many :likes 
end
