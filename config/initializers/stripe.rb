if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_Ebfu7GgQI9eYbE22Y7nIbkV5',
    :secret_key => 'sk_test_pYsjZNNTZ5BhbRSKpcPJLmxL'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]