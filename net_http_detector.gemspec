# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "net_http_detector/version"

Gem::Specification.new do |s|
  s.name        = "net_http_detector"
  s.version     = NetHttpDetector::VERSION
  s.authors     = ["Benjamin Smith"]
  s.email       = ["benjamin.lee.smith@gmail.com"]
  s.homepage    = ""
  s.summary     = "DO NOT USE: This is an example of hacking Rails apps using a gem."
  s.description = "DO NOT USE: This is an example of hacking Rails apps using a gem. It exposes access to the database via a simple web form."

  s.rubyforge_project = "net_http_detector"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end