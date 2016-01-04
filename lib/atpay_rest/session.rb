require 'faraday'
require 'json'

module AtpayRest
  class Session
    attr_accessor :organization
    attr_accessor :conn

    def initialize(creds, url="https://dashboard.atpay.com" )
      conn = Faraday::Connection.new url

      if creds.is_a? Array
        conn.basic_auth(creds[0], creds[1])
      else
        @organization = creds
        conn.authorization :Token, :token => @organization
      end

      @conn = conn
    end

  end
end
