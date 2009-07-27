# -*- encoding: utf-8 -*-
require 'rake'

Gem::Specification.new do |s|
  s.name = %q{ebayapi}
  s.version = "0.12.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Cody Fauser"]
  s.date = %q{2009-07-26}
  s.description = %q{Ruby interface to the eBay XML Trading API}
  s.email = %q{codyfauser@gmail.com}
  s.extra_rdoc_files = ["README", "MIT-LICENSE", "CHANGELOG"]
  s.files = FileList['lib/**/*.rb', 'bin/*', '[A-Z]*', 'test/**/*', 'examples/**/*'].to_a

  s.has_rdoc = true
  s.homepage = %q{http://rubyforge.org/projects/ebayapi/}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ebayapi}
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{A Ruby client for eBay's unified schema XML API.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mime-types>, [">= 1.15"])
      s.add_runtime_dependency(%q<diff-lcs>, [">= 1.1.2"])
    else
      s.add_dependency(%q<mime-types>, [">= 1.15"])
      s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
    end
  else
    s.add_dependency(%q<mime-types>, [">= 1.15"])
    s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
  end
end
