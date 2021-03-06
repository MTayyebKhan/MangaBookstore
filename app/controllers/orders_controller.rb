class OrdersController < ApplicationController
  def new
    @manga = Manga.find(params[:manga_id])

    Stripe.api_key = ENV['STRIPE_SK_TEST']
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      success_url: order_success_url,
      cancel_url: order_cancel_url,
      line_items: [
        {
          name: @manga.title,
          description: "by #{@manga.writer.name}",
          images: @manga.cover.attached? ? [@manga.cover.service_url] : [],
          amount: (@manga.price * 100).to_i,
          currency: 'aud',
          quantity: 1
        }
      ]
    )
  end

  def success
    render html: "<h4> Thanks for your order!</h4>".html_safe
  end

  def cancel 
    render html: "<h4> Your order was cancelled!</h4>".html_safe
  end
end
