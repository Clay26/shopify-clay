class Product < ApplicationRecord
    has_many :reviews

    validates :name, presence: true
    validates :description, presence: true, length: { minimum: 10 }
    validates :price, presence: true, numericality: { greater_than: 0.00 }
end
