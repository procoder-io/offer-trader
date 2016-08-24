class Payment < ApplicationRecord
  belongs_to :user

  # amount of payment should be added on user balance
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }

  # [TODO Task#1]: increase user balance after payment create
  # [TODO Task#2]: add entry to log about created offer
end