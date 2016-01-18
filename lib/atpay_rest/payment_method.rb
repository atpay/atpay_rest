require 'faraday'
require 'json'


module AtpayRest
  class PaymentMethod
    attr_accessor :mask
    attr_accessor :status

    def initialize(session, from)
      response = session.conn.get("api/v4/rest/payment_methods/status?from=#{CGI.escape(from)}")
      @mask = JSON.parse(response.body)["sms_mask"] rescue nil
      @status = response.status
    end

    def self.status(session, from)
      response = session.conn.get("api/v4/rest/payment_methods/status?from=#{CGI.escape(from)}")
      response.status
    end

  end
end
