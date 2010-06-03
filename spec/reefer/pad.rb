#!/usr/bin/env ruby
# vim: et ts=2 sw=2

require "spec/helper.rb"

describe Reefer::Pad do
  it "extracts the domain and pad name from an url" do
    pad = Reefer::Pad.new("http://example.com/test")
    pad.domain.should == "example.com"
    pad.name.should == "test"
  end

  it "raises for invalid pad urls" do
    lambda do
      Reefer::Pad.new("http://example.com/this/is/not/valid")
    end.should raise_error Reefer::InvalidPadName
  end

  it "returns a numeric Revision" do
    pad = Reefer::Pad.new("http://example.com/test")
    pad.revision(1).class.should == Reefer::Revision
  end

  it "returns the latest Revision" do
    pad = Reefer::Pad.new("http://example.com/test")
    pad.revision(:latest).version.should == :latest
  end

  it "ignores irrelevant url fragments" do
    pad = Reefer::Pad.new("http://example.com/test#what?a=b&c=d;e=f")
    pad.domain.should == "example.com"
    pad.name.should == "test"
  end

  it "returns the HTML of the latest revision" do
    pad = Reefer::Pad.new("http://example.com/test")
    pad.to_html.should == "alpha, <b>bravo</b>, <i>charlie</i>, <u>delta</u>"
  end

  it "strips whitespace from HTML output" do
    Reefer::Pad.new("http://example.com/whitespace").to_html.should == ""
  end
end
