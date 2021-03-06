require './lib/scrape'
require './lib/scrape_instruction'

describe Scrape do
  let(:test_scrape) { Scrape.new('https://javascript.info') }

  it 'inherits behavior from the superclass ScrapeInstruction' do
    expect(Scrape.superclass).to eq(ScrapeInstruction)
  end

  describe '#parts' do
    it 'returns an Array object type' do
      expect(test_scrape.parts.class).to eql(Array)
    end

    it 'returns 3 when counted' do
      expect(test_scrape.parts.count).to eql(3)
    end
  end

  describe '#categories_title' do
    it 'returns an Array object type' do
      expect(test_scrape.categories_title.class).to eql(Array)
    end

    it 'returns 27 when counted' do
      expect(test_scrape.categories_title.count).to eql(27)
    end
  end

  describe '#categories_with_url' do
    it 'returns an Array object type' do
      expect(test_scrape.categories_with_url.class).to eql(Array)
    end

    it 'returns true if all the elements in the array are hash' do
      check_hash = true
      test_scrape.categories_with_url.each do |category|
        if category.class != Hash
          check_hash = false
          break
        end
      end
      expect(check_hash).to eq true
    end
  end
end
