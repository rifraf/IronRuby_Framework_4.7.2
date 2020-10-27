# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{iron-term-ansicolor}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Will Green", "David Blackmon", "Ivan Porto Carrero"]
  s.date = %q{2010-03-02}
  s.description = %q{iron-term-ansicolor brings color output for RSpec and the likes to IronRuby.}
  s.email = %q{will@hotgazpacho.org}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc", "Rakefile", "iron-term-ansicolor.gemspec", "lib/iron-term-ansicolor.rb", "spec/iron-term-ansicolor_simple_background_spec.rb", "spec/iron-term-ansicolor_simple_foreground_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/hotgazpacho/iron-term-ansicolor}
  s.rdoc_options = ["--quiet", "--title", "iron-term-ansicolor brings color output for RSpec and the likes to IronRuby.", "--main", "README.rdoc", "--line-numbers", "--format", "darkfish"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.6")
  s.rubyforge_project = %q{iron-term-ansicolor}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{iron-term-ansicolor brings color output for RSpec and the likes to IronRuby.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<term-ansicolor>, [">= 1.0.4"])
    else
      s.add_dependency(%q<term-ansicolor>, [">= 1.0.4"])
    end
  else
    s.add_dependency(%q<term-ansicolor>, [">= 1.0.4"])
  end
end
