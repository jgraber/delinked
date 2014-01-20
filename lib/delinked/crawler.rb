require 'mechanize'

class Crawler
  
  def initialize
    @mechanize = Mechanize.new { |agent|
      agent.user_agent_alias = 'Mac Safari'
    }
  end

  def links(url)
    links_on_page = []
    @mechanize.get(url) { |page| page.links.each{|l| links_on_page << (page.uri.merge l.uri)}}
    links_on_page
  end
end