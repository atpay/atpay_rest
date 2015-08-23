require 'faraday'
require 'json'

module AtpayRest
  class Offer
    attr_accessor :button

    def initialize(session, args={})
      _response = session.conn.post("api/v4/rest/offers", args)
      @response = JSON.parse _response.body
      @offer = @response["offer"]
      @button = @response["offer"]["button"]
    end
  end
end
