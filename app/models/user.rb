class User < ApplicationRecord
  # authorization
  devise :database_authenticatable, :registerable, :validatable

  has_many :offers_as_buyer, class_name: "Offer", foreign_key: :buyer_id
  has_many :offers_as_seller, class_name: "Offer", foreign_key: :seller_id

  has_many :payments

  # user balance couldn't be negative
  validates :balance, numericality: { greater_than_or_equal_to: 0 }
end
