$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "profanator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "profanator"
  s.version     = Profanator::VERSION
  s.authors     = ["Arandi Lopez"]
  s.email       = ["arandilopez.93@gmail.com"]
  s.homepage    = "https://github.com/arandilopez/profanator"
  s.summary     = "Validate profanity."
  s.description = "Validate profanity of a model attribute or string."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1"

  s.add_development_dependency "sqlite3"
end
