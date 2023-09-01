class Stock < ApplicationRecord
  def self.look_up(ticker_sym)
    client = IEX::Api::Client.new(
      publishable_token: Rails.application.credentials.iex_client[:api_key_p],
      secret_token: Rails.application.credentials.iex_client[:api_key_s],
      endpoint: 'https://cloud.iexapis.com/v1'
    )

      begin
      new(ticker: ticker_sym,name: client.company(ticker_sym).company_name, last_price: client.price(ticker_sym))
        rescue => exception
          return nil?

      end

  end
end