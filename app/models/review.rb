class Review < ApplicationRecord
  belongs_to :product

  validates :commenter, presence: true
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
