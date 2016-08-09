require 'faraday'
require 'json'

module AtpayRest
  class Campaign
    def self.find_campaign(session, organization_sid, args={})
      _response = session.conn.get "api/v4/rest/campaigns/#{organization_sid}", args
      @response = JSON.parse _response.body
      OpenStruct.new @response
    end
  end
end
