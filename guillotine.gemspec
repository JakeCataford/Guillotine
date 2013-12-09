$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "guillotine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "guillotine"
  s.version     = Guillotine::VERSION
  s.authors     = ["Jake Cataford"]
  s.email       = ["Contact@JakeCataford.com"]
  s.homepage    = "Github.com"
  s.summary     = "A Webhook Parsing Script Executor for Rails"
  s.description = "TODO: Description of Guillotine."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  
end
