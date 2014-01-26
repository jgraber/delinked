require 'mechanize'

class Crawler
  
  def initialize
    @mechanize = Mechanize.new { |agent|
      agent.user_agent_alias = 'Mac Safari'
    }
  end

  # Grap all the links on the url.
  def links(url)
    page = @mechanize.get(url)
    get_links(page)
  end

  # Fetch the page with status and links.
  def fetch(url)
    page = Page.new(url)

    fetched_page = @mechanize.get(url)
    page.status = fetched_page.code.to_i
    page.links = get_links(fetched_page)

    page
  end

  private
  def get_links(page)
    links_on_page = []
    page.links.each{|l| links_on_page << (page.uri.merge l.uri)}
    links_on_page
  end
end