require './lib/scrape.rb'
require 'nokogiri'
require 'httparty'

# Fetch and parse HTML document
url = 'https://javascript.info/'
unparsed_page = HTTParty.get(url)
parsed_page = Nokogiri::HTML(unparsed_page)

#we have 3 sections in general
sections = parsed_page.css('section.frontpage-content__container') # 3
# getting the title of each part
parts = Array.new
sections.each do |part| 
  item = part.css('h2.frontpage-content__title').text
  parts << item
end

# number of categories == 27
categories = parsed_page.css('div.list')
# for each of the categories, we print the sub -  categories 
cats = Array.new
categories.each do |cat|
  m = cat.css('div.list__item')
  m.each do |a|
    cats << a.css('div.list__title')
  end
end

# cats.each { |a| puts a.text }

category_url = Array.new
categories.each do |cat|
  m = cat.css('div.list__item')
  m.each do |a|
    category_url << a.css('div.list__title a').map { |link| link['href'] }
  end
end

# puts category_url

mn = Scrape.new(url)

puts mn.instruction