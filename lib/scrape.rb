require_relative 'scrape_instruction'
require 'nokogiri'
require 'httparty'

module ScrapeInit
  def parsed_page(url)
    unparsed_page = HTTParty.get(url)
    Nokogiri::HTML(unparsed_page)
  end
end

class Scrape < ScrapeInstruction
  attr_accessor :url

  include ScrapeInit

  def initialize(url)
    @url = url
  end

  def parts
    parsed = parsed_page(@url)
  end
end

