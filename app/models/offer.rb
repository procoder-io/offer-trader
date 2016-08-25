class Offer < ApplicationRecord
  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User", optional: true

  validates :seller, presence: true
  validates :text, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }

  def user_can_buy?(user)
    user.present? && buyer.blank? && user != seller
  end
end