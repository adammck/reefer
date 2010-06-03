#!/usr/bin/env ruby
# vim: et ts=2 sw=2

require "lib/reefer.rb"

Gem::Specification.new do |s|
  s.name     = "reefer"
  s.version  = Reefer::Version
  s.date     = Time.now.strftime("%Y-%m-%d")
  s.summary  = "Ruby interface to Etherpad"
  s.homepage = "http://github.com/adammck/reefer"
  s.email    = "adam.mckaig@gmail.com"
  s.authors  = ["Adam Mckaig"]
  s.has_rdoc = false

  s.files = ["README", "LICENSE", "Rakefile"]
  s.files += Dir.glob("lib/**/*")
  s.files += Dir.glob("bin/**/*")
  s.files += Dir.glob("spec/**/*")

 s.executables = ["reefer"]
 s.description = "Reefer is a tiny Ruby interface to a hosted Etherpad. "
                 "Currently, there is very little functionality. In future, "
                 "it may provide a more complete API. You may consider that "
                 "an invitation for patches..."
end

