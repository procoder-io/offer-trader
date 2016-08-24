class User < ApplicationRecord
  # authorization
  devise :database_authenticatable, :registerable, :validatable

  has_many :offers
  has_many :payments

  # user balance couldn't be negative
  validates :balance, numericality: { greater_than_or_equal_to: 0 }
end
