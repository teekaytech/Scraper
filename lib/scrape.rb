require_relative 'scrape_instruction'
require_relative 'scrape_init'

class Scrape < ScrapeInstruction
  attr_accessor :url

  include ScrapeInit

  def initialize(url)
    @url = url
  end

  def complete_page
    parsed_page(@url)
  end

  def parts
    parts_arr = []
    fetch_parts.each { |part| parts_arr << part.css('h2.frontpage-content__title').text }
    parts_arr
  end

  def categories_title
    cat_title = []
    categories.each { |category| cat_title << category.text }
    cat_title
  end

  def categories_with_url
    cat_with_url = []
    categories.each do |category|
      sub_url = category.css('div.list__title a').map { |link| link['href'] }
      cat = {
        title: category.text,
        url: @url + sub_url[0]
      }
      cat_with_url << cat
    end
    cat_with_url
  end

  def categories
    categories = []
    fetch_categories.each do |cat|
      cat_node = cat.css('div.list__item')
      cat_node.each do |node|
        categories << node.css('div.list__title')
      end
    end
    categories
  end

  private

  def fetch_categories
    complete_page.css('div.list')
  end

  def fetch_parts
    complete_page.css('section.frontpage-content__container')
  end
end
