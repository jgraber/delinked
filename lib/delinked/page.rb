class Page
  attr_accessor :status
  attr_reader :url, :title

  def initialize(url, title)
    @url = url
    @title = title
  end

end