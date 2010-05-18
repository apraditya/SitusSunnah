lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'rcov_plugin/version'
 
Gem::Specification.new do |s|
  s.name        = "rcov_plugin"
  s.version     = RcovPlugin::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Alan Johnson"]
  s.email       = ["alan@commondream.net"]
  s.homepage    = "http://github.com/commondream/rcov_plugin"
  s.summary     = "The easiest way to measure coverage for your Rails project"
  s.description = "rcov_plugin adds the rake tasks that you need to measure coverage in your Rails project"
 
  s.required_rubygems_version = ">= 1.3.6"
  
  s.add_dependency('rails', ">= 3.0.0.beta2")
  s.add_dependency('rcov', '>= 0.9.6')
 
  s.files        = Dir.glob("lib/**/*") + %w(README.md)
  s.require_path = 'lib'
end