require 'faraday'
require 'json'

module AtpayRest
  class Dashboard
    def self.find_organization(session, search_string, args={})
      response = session.conn.get "api/v4/rest/organizations/#{search_string}", args
      JSON.parse response.body
    end
  end
end
