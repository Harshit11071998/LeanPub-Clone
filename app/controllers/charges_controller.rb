class ChargesController < ApplicationController
  before_action :total

  def create
    # Amount in cents
    #@amount = 500

    customer = Stripe::Customer.create({
      email: current_user.email,
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: "Rails Stripe customer",
      currency: "inr",
    })
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private

  def total
    @order = Order.where(user_id: current_user.id).last
    @line = LineItem.where(order_id: @order)
    amt = 0
    @line.each do |line|
      amt += (line.quantity * line.book.selling_price)
    end
    @amount = amt.to_i
  end
end
