require 'faraday'
require 'json'

module AtpayRest
  class Dashboard
    def self.find_organization(session, search_string, args={})
      response = session.conn.get "api/v4/rest/organizations/#{search_string}", args
      puts response.body
      JSON.parse response.body
    end

    def self.create_organization(session, args)
      _response = session.conn.post("api/v4/rest/organizations", args)
      _response.body
    end

    def self.create_plan_on_organization(session, organization_sid, args)
      _response = session.conn.post("/api/v4/rest/organizations/#{organization_sid}/plan", args)
      _response.body
    end    
  end
end
