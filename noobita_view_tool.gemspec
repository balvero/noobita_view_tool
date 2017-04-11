# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'noobita_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "noobita_view_tool"
  spec.version       = NoobitaViewTool::VERSION
  spec.authors       = ["Bernard Alvero"]
  spec.email         = ["bernard.alvero@gmail.com"]

  spec.summary       = %q{View Methods for my Applications}
  spec.description   = %q{Provides generated HTML data for Rails applications}
  spec.homepage      = "http://noobita.herokuapp.com"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
