#!/usr/bin/env ruby
# vim: et ts=2 sw=2

require "spec/helper.rb"

describe Reefer::Revision do
  it "returns the URL"
  it "retrieves the HTML source"
  it "parses the HTML into a node array"
  it "ignores trailing <br> elements"
  it "renders the content back into HTML"
end
