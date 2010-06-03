#!/usr/bin/env ruby
# vim: et ts=2 sw=2

require "open-uri"

module Reefer
  class << self
    def fetch(url)
      open(url)
    end
  end
end
