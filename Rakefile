#!/usr/bin/env ruby
# vim: et ts=2 sw=2

require "rake"
require "spec/rake/spectask"

desc "Run all RSpec tests"
Spec::Rake::SpecTask.new("spec") do |t|
  t.spec_files = FileList["spec/reefer/*.rb"]
end
