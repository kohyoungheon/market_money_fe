class MarketsFacade
  attr_reader :id

  def initialize(params)
    @id = params[:id]
  end

  def all_markets
    json = service.get_all_markets
    json[:data].map do |market_data|
      Market.new(market_data)
    end
  end

  def one_market
    json = service.get_one_market(@id)
    Market.new(json[:data])
  end

  def vendors_for_market
    json = service.get_vendors_for_market(@id)
    json[:data].map do |market_data|
      Market.new(market_data)
    end
  end

  def vendor_info
    json = service.get_vendor_info(@id)
    Vendor.new(json[:data])
  end

  private 

  def service
   @_service ||= MarketService.new
  end
end