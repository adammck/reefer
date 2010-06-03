#!/usr/bin/env ruby
# vim: et ts=2 sw=2

require "nokogiri"

module Reefer
  class Revision
    attr_reader :pad, :version

    def initialize(pad, version)
      @pad = pad
      @version = version
    end

    def url(format=:html)
      "http://#{@pad.domain}/ep/pad/export/#{@pad.name}/#{name}?format=#{format}"
    end

    def name
      if @version.is_a?(Numeric)
        "rev.#{@version}"
      else
        @version
      end
    end

    def fetch
      Reefer::fetch(url)
    end

    def contents
      doc = Nokogiri::HTML(fetch)
      nodes = doc.css("body").children

      # remove trailing <br> from the body.
      # (etherpad keeps adding them on save.)
      while nodes[-1].name == "br"
        nodes.pop
      end

      nodes
    end

    def to_html
      contents.to_html
    end
  end
end
