class HomeController < ApplicationController
  def index
    @conn = Faraday.new(url: "https://api.github.com/") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
    @conn.headers["X-API-KEY"] = "91b0e26c573967db1638"

    response = @conn.get("/")

    results = JSON.parse(response.body, symbolize_names: true)
    binding.pry
  end
end
