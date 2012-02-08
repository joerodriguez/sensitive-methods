require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('sensitive_methods', '0.1.0') do |p|
  p.description    = "Warns dev's when they may be using a method that returns sensitive or private data."
  p.url            = "http://github.com/joerodriguez/sensitive-methods"
  p.author         = "Joseph Rodriguez"
  p.email          = "jrodriguez@patientslikeme.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

