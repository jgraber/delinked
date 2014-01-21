require 'spec_helper'

describe "A Page" do
  it "can store the tile and the URL" do
    page = Page.new("http://github.com")
    page.title = "GitHub"
    "GitHub".should eq(page.title)
    "http://github.com".should eq(page.url)
  end

  it "can store a status info" do
    page = Page.new("")
    page.status = 303
    303.should eq(page.status)
  end
end
