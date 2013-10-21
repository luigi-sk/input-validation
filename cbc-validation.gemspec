$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cbc-validation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cbc-validation"
  s.version     = CbcValidation::VERSION
  s.authors     = ["TODO: Lukas Votypka"]
  s.email       = ["TODO: lukas.votypka@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of CbcValidation."
  s.description = "TODO: Description of CbcValidation."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"

end
