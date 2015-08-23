require 'faraday'
require 'json'

# URL_PREFIX = "https://dashboard.atpay.com"

URL_PREFIX = "http://localhost:3000"


module AtpayRest
  class Session
    attr_accessor :organization
    attr_accessor :conn

    def initialize(organization_id)
      @organization = organization_id
      conn = Faraday::Connection.new URL_PREFIX
      conn.authorization :Token, :token => organization_id
      @conn = conn
    end

  end
end
