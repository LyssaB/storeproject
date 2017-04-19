class PaymentsController < ApplicationController
  before_action :authenticate_user!

  def create
  token = params[:stripeToken]
  @product = params[:product_id]
  @user = current_user
    begin
      charge = Stripe::Charge.create(
        :amount => @product.price, # amount in cents, again
        :currency => "usd",
        :source => token,
        :description => params[:stripeEmail]
      )

      if charge.paid
        Order.create(

          user_id: @user_id,
          product_id: @product_id,
          total: @product_price
          )
      end
      rescue Stripe::CardError => e
      body = e.json_body
      err = body[:error]
      flash[:error] = "I'm sorry, there was a problem processeing your payment: #{err[:message]}"
    end

  end
end