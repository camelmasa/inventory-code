Gem::Specification.new do |spec|
  spec.name          = 'inventory-code'
  spec.version       = '0.1.0'
  spec.authors       = ['Masahiro Saito']
  spec.email         = ['camelmasa@gmail.com']
  spec.summary       = 'Check type of inventory'
  spec.description   = 'Check type of inventory'
  spec.homepage      = 'https://github.com/camelmasa/inventory-code'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
end
