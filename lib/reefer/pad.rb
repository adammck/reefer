#!/usr/bin/env ruby
# vim: et ts=2 sw=2

module Reefer
  class Pad
    attr_reader :domain, :name

    def initialize(url)
      @domain, @name = url.split("/")
    end

    def revision(version)
      Revision.new(self, version)
    end

    def to_html
      revision(:latest).to_html
    end
  end
end
