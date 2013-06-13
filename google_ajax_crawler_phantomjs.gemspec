# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_ajax_crawler_phantomjs/version'

Gem::Specification.new do |spec|
  spec.name          = "google_ajax_crawler_phantomjs"
  spec.version       = GoogleAjaxCrawlerPhantomjs::VERSION
  spec.authors       = ["Christophe Belpaire"]
  spec.email         = ["christophe.belpaire@gmail.com"]
  spec.description   = "PhantomJS driver for the google_ajax_crawler gem"
  spec.summary       = "PhantomJS driver for the google_ajax_crawler gem: Rack Middleware adhering to the Google Ajax Crawling Scheme, using a headless browser to render JS heavy pages and serve a dom snapshot of the rendered state to a requesting search engine."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "poltergeist", ">= 1.3.0"
  spec.add_dependency "google_ajax_crawler"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
