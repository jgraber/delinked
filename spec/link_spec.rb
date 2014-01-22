require 'spec_helper'
require "delinked/link"
require 'fakeweb'

describe "A Link object" do
	let(:main_url) {"http://GitHub.com"}
	let(:user_url) {"hTTp://www.githuB.com/jgraber"}
	let(:sub_domain) {"http://jgraber.github.com"}

	it "can store a URL" do
		link = Link.new main_url

		(link.url).should eq (main_url)
	end

	it "knows that main and user are on the same domain" do

		link = Link.new main_url
		same_domain = link.same_domain? user_url
		(same_domain).should be true
	end

	it "knows that sub_domain is in another domain" do
		link = Link.new main_url
		same_domain = link.same_domain? sub_domain
		(same_domain).should be false
	end

end