$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "atpay_rest/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "atpay_rest"
  s.version     = AtpayRest::VERSION
  s.authors     = ["Isaiah Baca", "Patrick White"]
  s.email       = ["isaiah@atpay.com", "patrickw@atpay.com"]
  s.homepage    = "http://docs.atpay.com"
  s.summary     = "Gem to wrap @Pay REST API."
  s.description = "Gem to wrap @Pay REST API."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "faraday"
  s.add_dependency "json"

  s.add_development_dependency "sqlite3"
end
