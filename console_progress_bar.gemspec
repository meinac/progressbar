# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'console_progress_bar/version'

Gem::Specification.new do |spec|
  spec.name          = "console_progress_bar"
  spec.version       = ConsoleProgressBar::VERSION
  spec.authors       = ["Mehmet Emin İNAÇ"]
  spec.email         = ["mehmetemininac@gmail.com"]
  spec.description   = %q{useful progress bar gem for console usage}
  spec.summary       = %q{Progress bar implementation for console scripts which you can show elapsed time and remaining time with animation or progressbar or current percent of total transactions}
  spec.homepage      = "http://github.com/meinac/progressbar"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
