class CommitsController < ApplicationController

  def index
    @conn = Faraday.new(url: "https://api.github.com/") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.headers["X-API-KEY"] = ENV["GITHUB_API_KEY"]
    end
  end

end
