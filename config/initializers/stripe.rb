if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_live_pS0FYL14RPmmfrsnFoP4xbFX',
    :secret_key => 'sk_live_vdbgVsdMA2cQpxjO9sMniKq8'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]