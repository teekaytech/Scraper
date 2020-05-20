class ScrapeInstruction
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def banner
    "\nThis app scrapes the breakdown of a Modern JavaScript Tutorial. It sources data from #{@url}"
  end

  def instruction
    <<-INS
    Enter:
    1 for scraping the basic sections.
    2 for scraping the categories under each section.
    3 for scraping by categories with their URL.
    ...any other key to EXIT the app: \n
    INS
  end

  def end_scrape
    "Thank you. Scraping Terminates!"
  end
end
