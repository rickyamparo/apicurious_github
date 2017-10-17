class HomeController < ApplicationController
  def index
    @user = current_user

    @conn = Faraday.new(url: "https://api.github.com/") do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.headers["X-API-KEY"] = ENV["GITHUB_API_KEY"]
      faraday.headers["Authorization"] = "token #{@user.oauth_token}"
    end

    raw_followers = @conn.get("/users/rickyamparo/followers").env.body
    followers = JSON.parse(raw_followers, symbolize_names: true).count
    @user.followers = followers

    raw_starred = @conn.get("/users/rickyamparo/starred").env.body
    starred_repos = JSON.parse(raw_starred, symbolize_names: true).map {|starred| starred[:name]}
    @user.starred_repos = starred_repos[0]

    raw_following = @conn.get("/users/rickyamparo/following").env.body
    following = JSON.parse(raw_following, symbolize_names: true).count
    @user.following = following
  end
end
