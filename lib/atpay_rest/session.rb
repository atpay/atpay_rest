require 'faraday'
require 'json'

module AtpayRest
  class Session
    attr_accessor :organization
    attr_accessor :conn

    def initialize(organization_id, url="https://dashboard.atpay.com" )
      @organization = organization_id
      conn = Faraday::Connection.new url
      conn.authorization :Token, :token => organization_id
      @conn = conn
    end

  end
end
