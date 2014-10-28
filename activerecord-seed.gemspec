# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_record/seed/version'

Gem::Specification.new do |spec|
  spec.name          = "activerecord-seed"
  spec.version       = "0.0.6.2"
  spec.authors       = ["itzki wfschmitt"]
  spec.email         = ["itzki.h@gmail.com wfschmittx@gmail.com"]
  spec.description   = %q{An extension of ActiveRecord that supports to dump/load data with CSV}
  spec.summary       = %q{An extension of ActiveRecord that supports to dump/load data with CSV}
  spec.homepage      = "https://github.com/wfschmitt/activerecord-seed"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord"
  spec.add_dependency 'activesupport'
  spec.add_dependency 'version_bumper'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", '~> 0'
end

