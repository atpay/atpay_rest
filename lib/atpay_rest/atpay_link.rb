require 'faraday'
require 'json'

module AtpayRest
  class AtpayLink
    attr_accessor :long_url
    attr_accessor :short_url
    attr_accessor :thanks_url

    def initialize(session, link)
      _response   = session.conn.post("shorten", {url: link})
      response    = JSON.parse _response.body
      @short_url  = response["atpay_link"]
      @long_url   = response["long_url"]
      @thanks_url = response["thanks_url"]
    end
  end
end
