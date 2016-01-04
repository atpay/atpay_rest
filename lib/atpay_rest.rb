module AtpayRest
  if defined?(Rails)
    require_relative "engine"
  else
    require_relative "atpay_rest/session"
    require_relative "atpay_rest/version"
    require_relative "atpay_rest/payment_method"
    require_relative "atpay_rest/offer"
    require_relative "atpay_rest/atpay_link"
  end
end
