class OfferCreator
  attr_reader :offer

  def initialize(offer)
    @offer = offer
  end

  def create!
    offer.save!
    offer
  end
end