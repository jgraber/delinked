require 'spec_helper'

describe "A Page" do
  it "can store the tile and the URL" do
    page = Page.new("http://github.com", "GitHub")
    "GitHub".should eq(page.title)
  end
end
