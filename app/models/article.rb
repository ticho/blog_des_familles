class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category, optional: true
  has_many :likes
  has_many :comments
end
