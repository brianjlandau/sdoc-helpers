# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{brianjlandau-sdoc-helpers}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Wanstrath", "Brian Landau"]
  s.date = %q{2010-01-24}
  s.description = %q{Simple helpers to make using sdoc easier.}
  s.email = %q{chris@ozmm.org}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "README.md",
     "Rakefile",
     "lib/rake/sdoctask.rb",
     "lib/sdoc_helpers.rb",
     "lib/sdoc_helpers/markdown.rb",
     "lib/sdoc_helpers/pages.rb",
     "lib/sdoc_helpers/version.rb"
  ]
  s.homepage = %q{http://github.com/brianjlandau/sdoc-helpers}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Simple helpers to make using sdoc easier.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

