$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bucnewswidget/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'bucnewswidget'
  s.version     = Bucnewswidget::VERSION
  s.authors     = ['yunix']
  s.email       = ['pcarrillo@adventist.org.uk']
  s.homepage    = 'http://www.k3integrations.com/'
  s.summary     = 'BUC News Widget'
  s.description = 'BUCNews feed Widget for netAdventist displaying UK and Ireland Adventist News.'
  s.license     = 'netAdventist'
  s.metadata    = {'na4_type' => 'extension'}
  s.files = Dir["{app,db,config,lib}/**/*"] # + ["Rakefile", "README.rdoc"]  #Uncomment if you have these files
  
  s.add_dependency "rails", "~> 4.0.2"
end
