require 'nokogiri'
require 's_module'

class Scrape
  attr_accessor :url

  extend ScrapeInit

  def initialize(url)
    @url = url
  end

  def parts
    parsed_page = ScrapeInit::parsed_page(url)
  end
end

