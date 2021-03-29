class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commentable, polymorphic: true , counter_cache: :comments_count
  has_many :likes , as: :likeable
  has_many :comments ,as: :commentable

  validates :body, presence: true, length: { maximum: 500 }

end
