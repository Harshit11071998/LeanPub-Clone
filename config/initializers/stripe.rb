Rails.configuration.stripe = {
  :publishable_key => "pk_test_51I9keXHCjJCsPEXRZtiMZNO7YRMZj04wCoV5mBYkkUPKWhe5ncuswYdWKqQecT1YOYtlWqFkd1HwYdX9Q7sbiBEJ00tDdb6Kar",
  :secret_key => "sk_test_51I9keXHCjJCsPEXRnJWQ23LL0qO9bL9qrCpJg7Djf776WdTfAlyeFooXcUzEyTjncrJFZ1aPu0rfqtIpOjN3Gzpp00K6k9Iu8E",
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
