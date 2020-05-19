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

  def complete_page
    parsed = parsed_page(@url)
  end

  def parts
    all_parts = complete_page.css('section.frontpage-content__container')
    parts_arr = Array.new
    all_parts.each { |part| parts_arr << part.css('h2.frontpage-content__title').text }
    parts_arr
  end
  
end

