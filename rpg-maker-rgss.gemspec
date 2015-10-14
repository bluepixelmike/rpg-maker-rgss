# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'rpg-maker-rgss'
  spec.version       = '3.0.0.0'
  spec.authors       = ['Enterbrain', 'Michael Miller']
  spec.email         = ['bluepixelmike@gmail.com']
  spec.summary       = %q{Gem containing the built-in classes and modules provided by RGSS for RPG Maker.}
  spec.description   = %q{Contains the skeleton for RGSS used by RPG Maker.
The purpose of this gem is provide documentation and code completion reference for external IDEs.
All credit and ownership for the original code goes to Enterbrain - the creators of RPG Maker.}
  spec.homepage      = 'https://github.com/bluepixelmike/rpg-maker-rgss'
  # TODO: spec.license

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
