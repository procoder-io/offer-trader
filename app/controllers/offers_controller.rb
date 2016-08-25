class OffersController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @offers = Offer.order("id desc")
  end

  def buy
    @offer = Offer.find(params[:offer_id])
    @offer.buyer = current_user
    @offer.save!

    redirect_to offers_path
  end

  def create
    @offer = current_user.offers_as_seller.new(offer_params)
    OfferCreator.new(@offer).create!

    redirect_to offers_path
  end

  def offer_params
    params.required(:offer).permit(:text, :price)
  end
end