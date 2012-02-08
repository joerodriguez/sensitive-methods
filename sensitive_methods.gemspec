# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sensitive_methods"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joseph Rodriguez"]
  s.date = "2012-02-08"
  s.description = "Warns dev's when they may be using a method that returns sensitive or private data."
  s.email = "jrodriguez@patientslikeme.com"
  s.extra_rdoc_files = ["README", "README.rdoc", "lib/sensitive_methods.rb"]
  s.files = ["README", "README.rdoc", "Rakefile", "lib/sensitive_methods.rb", "Manifest", "sensitive_methods.gemspec"]
  s.homepage = "http://github.com/joerodriguez/sensitive-methods"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Sensitive_methods", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "sensitive_methods"
  s.rubygems_version = "1.8.11"
  s.summary = "Warns dev's when they may be using a method that returns sensitive or private data."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
