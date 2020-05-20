require './lib/scrape_instruction'

describe ScrapeInstruction do
  let(:test) { ScrapeInstruction.new('https://javascript.info') }

  it 'is a superclass to subclass Scrape' do
    expect(test.class.ancestors.include?(ScrapeInstruction)).to eq(true)
  end

  it 'returns the url if the class variable is read' do
    expect(test.url).to eql('https://javascript.info')
  end

  describe '#banner' do
    it 'returns the banner message for the scraper, which must be a string' do
      expect(test.banner.class).to eql(String)
    end
  end

  describe '#instruction' do
    expected =
      <<-INS
    Enter:
    1 for scraping the basic sections.
    2 for scraping the categories under each section.
    3 for scraping by categories with their URL.
    ...any other key to EXIT the app: \n
      INS

    it 'returns a message that matches the expected' do
      expect(test.instruction).to match(expected)
    end

    it 'returns the instruction message for the scraper, which must be a string' do
      expect(test.instruction.class).to eql(String)
    end
  end

  describe '#end_scrape' do
    it 'returns the concluding message for the scraper, which must be a string' do
      expect(test.end_scrape.class).to eql(String)
    end
  end
end
