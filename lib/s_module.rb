require 'nokogiri'
require 'httparty'

module ScrapeInit
  def parsed_page(url)
    unparsed_page = HTTParty.get(url)
    Nokogiri::HTML(unparsed_page)
  end
end