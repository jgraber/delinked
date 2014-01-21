class Page
  attr_accessor :status, :title
  attr_reader :url

  def initialize(url)
    @url = url
  end

end