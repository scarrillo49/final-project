class Transaction < ApplicationRecord
    validates :date, presence: true
    validates :amount, numericality: { greater_than: 0 }
    validates :category, presence: true
end
