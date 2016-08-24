class OffersController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @offers = Offer.order("id desc")
  end

  def buy
    @offer = Offer.find(params[:offer_id])
    @offer.buyer = current_user
    @offer.save!

    redirect_to root_path
  end

  def create
    @offer = Offer.new(params[:offer])
    @offer.save!

    redirect_to offers_path
  end
end