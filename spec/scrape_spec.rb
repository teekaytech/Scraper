require './lib/scrape'
require './lib/scrape_instruction'

describe Scrape do
  let(:test_scrape) { Scrape.new('https://javascript.info') }

  it 'inherits behavior from the superclass ScrapeInstruction' do
    expect(Scrape.superclass).to eq(ScrapeInstruction)
  end

  describe '#complete_page' do
    it 'is expected to return a Nokogiri object type' do
      expect(test_scrape.complete_page.class).to eql(Nokogiri::HTML::Document)
    end
  end

  #   it 'returns the icon that represents a player2' do
  #     expect(player2.icon).to eql('O')
  #   end
  # end

  # describe '#win_message' do
  #   it 'returns the winning message for the player that wins the game' do
  #     expect(player.win_message).to eql('Congratulations!!! player1 is the Winner...')
  #   end
  # end

  # describe '#false_move_message' do
  #   it 'returns a message for any false move by a player' do
  #     expect(player.false_move_message).to eql('Invalid move by player1, try again!')
  #   end
  # end
end

