class Dog < ApplicationRecord
    validates :name, presence: true
    validates :breed, presence: true
    validates :birth_date, presence: { before: :today }
    validates :weight, numericality: { greater_than: 0 }
end
