require_relative('lib/gamesave')

Gem::Specification.new do |spec|
  spec.name = 'gamesave'
  spec.version = Gamesave::VERSION
  spec.date = '2019-12-24'
  spec.summary = 'Game save'
  spec.description = 'Game save'
  spec.authors = ['Glutexo']
  spec.email = 'glutexo@icloud.com'
  spec.files = Dir['lib/**/*']
  spec.homepage = 'https://www.github.com/Glutexo/gamesave'
  spec.license = 'MIT'
end
