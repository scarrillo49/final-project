class Transaction < ApplicationRecord
    validates :date, presence: { before: :today}
    validates :amount, numericality: { greater_than: 0 }
    validates :category, length: { in: 2..10 }
end
