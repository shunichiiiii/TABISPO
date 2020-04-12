class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :likes
  has_many :comments
  has_one_attached :image
end
