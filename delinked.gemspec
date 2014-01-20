# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'delinked/version'

Gem::Specification.new do |gem|
  gem.name          = "delinked"
  gem.version       = Delinked::VERSION
  gem.authors       = ["Johnny Graber"]
  gem.email         = ["jg@jgraber.ch"]
  gem.description   = "delinked checks for broken links and displays which pages link to each other"
  gem.summary       = "A simple link checker"
  gem.homepage      = "https://github.com/jgraber/delinked"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency('rdoc')
  gem.add_development_dependency('aruba')
  gem.add_development_dependency('rake', '~> 0.9.2')
  gem.add_dependency('methadone', '~> 1.3.1')
  gem.add_development_dependency('rspec')
  gem.add_dependency('mechanize', '~> 2.7.3')
  gem.add_development_dependency('fakeweb', '~> 1.3.0')
end
