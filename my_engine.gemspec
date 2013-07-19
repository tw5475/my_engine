$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "my_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "my_engine"
  s.version     = MyEngine::VERSION
  s.authors     = ["Calos"]
  s.email       = ["calos0921@"]
  s.homepage    = "http://tw.yahoo.com"
  s.summary     = "Test of MyEngine."
  s.description = "Description of MyEngine."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
  #s.add_dependency "rails", "~> 3.2.1"
  s.add_dependency "omniauth"
  s.add_dependency "omniauth-twitter"
  s.add_dependency "omniauth-facebook"

  s.add_development_dependency "sqlite3"
end
