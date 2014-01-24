require 'uri'

class Link

  # Create a Link with an url
  def initialize(url)
  	@url = URI.parse(url)
  end

  # Get the url as a string.
  def url
  	@url.to_s
  end

  # Check if the link is on the same domain as the other url.
  def same_domain?(other_url)
  	other = URI.parse(other_url)
		same_hostname?(other) and same_scheme?(other)
  end


  private
  def hostname(url)
		host = url.host.downcase
  	host.prepend "www." unless host.start_with? "www."
  	host
  end

  def scheme(url)
  	url.scheme.downcase
  end

  def same_hostname?(other_url)
  	hostname(@url).eql? hostname(other_url)
  end

  def same_scheme?(other_url)
  	scheme(@url).eql? scheme(other_url)
  end
end