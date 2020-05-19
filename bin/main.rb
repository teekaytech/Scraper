require './lib/scrape.rb'

# Fetch and parse HTML document
url = 'https://javascript.info'

mn = Scrape.new(url)

puts mn.categories_with_url