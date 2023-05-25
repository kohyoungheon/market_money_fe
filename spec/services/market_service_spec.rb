require 'rails_helper'

describe MarketService do
  it "#get_all_markets" do
    all_markets = MarketService.new.get_all_markets

    expect(all_markets).to be_a(Hash)
    expect(all_markets).to have_key(:data)
    expect(all_markets[:data]).to be_an(Array)
    
    expect(all_markets[:data].first).to have_key(:id)
    expect(all_markets[:data].first[:id]).to be_a(String)
    
    expect(all_markets[:data][0][:attributes][:name]).to be_a(String)
    expect(all_markets[:data][0][:attributes][:street]).to be_a(String)
    expect(all_markets[:data][0][:attributes][:city]).to be_a(String)
    expect(all_markets[:data][0][:attributes][:county]).to be_a(String)
    expect(all_markets[:data][0][:attributes][:state]).to be_a(String)
    expect(all_markets[:data][0][:attributes][:zip]).to be_a(String)
    expect(all_markets[:data][0][:attributes][:lat]).to be_a(String)
    expect(all_markets[:data][0][:attributes][:lon]).to be_a(String)
  end
end