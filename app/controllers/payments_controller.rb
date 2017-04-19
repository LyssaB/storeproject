class PaymentsController < ApplicationController
  before_action :authenticate_user!

  def create
  token = params[:stripeToken]
  @product = Product.find(params[:product_id])
  @amount = @product.price #price in cents
  @user = current_user
    begin
      charge = Stripe::Charge.create(
        :amount => @amount # amount in cents, again
        :currency => "usd",
        :source => token,
        :description => params[:stripeEmail]
      )

      if charge.paid
        Order.create!(
          user_id: @user.id,
          product_id: @product.id,
          total: @product.price
          )
      end
      rescue Stripe::CardError => e
      body = e.json_body
      err = body[:error]
      flash[:error] = "I'm sorry, there was a problem processing your payment: #{err[:message]}"
      redirect_to product_path(@product)
    end
    redirect_to product_path(@product), notice: "Thank you for your purchase!"
  end
end
