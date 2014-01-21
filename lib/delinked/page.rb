class Page
  attr_accessor :status, :title, :links
  attr_reader :url

  def initialize(url)
    @url = url
  end

end