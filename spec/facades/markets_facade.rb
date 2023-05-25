require 'rails_helper'

RSpec.describe MarketsFacade do
  describe '#all_markets' do
    it 'returns all markets' do
      facade = MarketsFacade.new
      markets = facade.all_markets
      expect(markets).to be_an(Array)
    end
  end
end