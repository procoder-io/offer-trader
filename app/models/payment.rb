class Payment < ApplicationRecord
  belongs_to :user

  # amount of payment should be added on user balance
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end