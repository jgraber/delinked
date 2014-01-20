require 'spec_helper'
require "delinked/crawler"
require 'fakeweb'

describe "Crawling the start page" do
  let(:url) { 'http://example.com' }
  before { 
    file =File.open(File.dirname(__FILE__)+'/support/start.html',"rb")
    response = file.read
    FakeWeb.register_uri(:get, url, :body => response, :content_type => "text/html")
  }

  it "finds the links on the page" do
    crawler = Crawler.new
    puts url
    links = crawler.links(url)
    (links.length).should eq 15
  end
end