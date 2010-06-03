#!/usr/bin/env ruby
# vim: et ts=2 sw=2

require "uri"

module Reefer
  class Pad
    attr_reader :domain, :name

    def initialize(url)
      url = URI.parse(url)
      @domain = url.host
      @name = url.path
    end

    def revision(version)
      Revision.new(self, version)
    end

    def to_html
      revision(:latest).to_html
    end
  end
end
