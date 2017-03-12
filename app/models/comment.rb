class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  scope :descending, -> { reorder(created_at: :desc)}
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }
end
