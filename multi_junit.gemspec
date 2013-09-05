# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "multi_junit/version"

Gem::Specification.new do |s|
  s.name				    = "multi_junit"
  s.version				  = MultiJunit::VERSION
  s.platform			  = Gem::Platform::RUBY
  s.authors				  = ["Piotr Dubiel"]
  s.summary				  = %q{MultiJUnit is Cucumber formatter for Calabash testing on multiple devices}
  s.files 				  = ["lib/multi_junit.rb"]
  s.add_dependency("cucumber")
  s.add_dependency("calabash-android")
  s.require_paths   = ["lib"]
end
