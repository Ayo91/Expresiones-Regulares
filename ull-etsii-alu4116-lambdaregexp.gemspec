# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ull-etsii-alu4116-lambdaregexp/version"

Gem::Specification.new do |s|
  s.name        = "ull-etsii-alu4116-lambdaregexp"
  s.version     = Ull::Etsii::Alu4116::Lambdaregexp::VERSION
  s.authors     = ["Ayo91"]
  s.email       = ["ayoze.peraza@gmail.com"]
  s.homepage    = "https://dl.dropbox.com/u/14539152/LPP/LPPbook/node44.html"
  s.summary     = %q{--}
  s.description = %q{Un Motor para las expresiones regulares}

  s.rubyforge_project = "ull-etsii-alu4116-lambdaregexp"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
