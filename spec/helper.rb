#!/usr/bin/env ruby
# vim: et ts=2 sw=2

require "lib/reefer.rb"

# stub out the url fetching.
module Reefer
  class << self
    def fetch(url)
      File.open("spec/examples/" + EXAMPLES[url]).read
    end
  end
end

EXAMPLES = {
  "http://example.com/ep/pad/export/test/latest?format=html" => "latest_html"
  "http://example.com/ep/pad/export/test/rev.10?format=html" => "rev10_html"
}
