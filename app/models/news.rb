class News < ApplicationRecord
  acts_as_taggable
  belongs_to :user

  has_many :likes
  has_many :liked_users, through: :likes, source: :user

end
