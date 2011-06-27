# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "spaconf/version"

Gem::Specification.new do |s|
  s.name        = "spaconf"
  s.version     = Spaconf::VERSION
  s.authors     = ["JO"]
  s.email       = ["jakub.oboza@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Growl notification of new confirmation with moneyz}
  s.description = %q{Makes a Gworl notification when you receive mail notification about new spabreaks booking}

  s.rubyforge_project = "spaconf"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
