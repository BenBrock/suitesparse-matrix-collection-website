# frozen_string_literal: true

# config/initializers/recaptcha.rb
require 'recaptcha'

# Rails.application.secrets (and config/secrets.yml) were removed in Rails 7.2.
# config/secrets.yml only ever passed these two environment variables through,
# so read them directly. The variable names are unchanged, which keeps the
# existing Heroku config vars working as-is.
Recaptcha.configure do |config|
  config.site_key = ENV.fetch('RECAPTCHA_PUBLIC_KEY', nil)
  config.secret_key = ENV.fetch('RECAPTCHA_PRIVATE_KEY', nil)
  # Uncomment the following line if you are using a proxy server:
  # config.proxy = 'http://myproxy.com.au:8080'
end
