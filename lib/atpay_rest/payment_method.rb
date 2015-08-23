require 'faraday'
require 'json'


module AtpayRest
  class PaymentMethod

    def self.status(session, from)
      response = session.conn.get("api/v4/rest/payment_methods/status?from=#{CGI.escape(from)}")
      response.status
    end

  end
end
