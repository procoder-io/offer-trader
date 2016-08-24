class PaymentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @payment = current_user.payments.new(payment_params)
    @payment.save!

    redirect_to root_path
  end

  def payment_params
    params.required(:payment).permit(:amount)
  end
end