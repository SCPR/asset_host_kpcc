lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'asset_host/asset_host_kpcc/version'

Gem::Specification.new do |s|
  s.name          = 'asset_host_kpcc'
  s.version       = AssetHost::AssetHostKpcc::VERSION
  s.authors       = ['Ben Titcomb']
  s.email         = ['btitcomb@scpr.org']

  s.summary       = 'A plugin for AssetHost that provides KPCC-specific functions.'
  s.description   = 'A plugin for AssetHost that provides KPCC-specific functions.'
  s.homepage      = 'https://github.com/scpr/asset_host_kpcc'
  s.license       = 'MIT'

  s.required_ruby_version = '~> 2.3'

  s.files = Dir['{lib}/**/*'] + %w(LICENSE.txt README.md)

  s.require_paths = ['lib']

  s.add_runtime_dependency 'honeybadger', '~> 3.1.2'

end

