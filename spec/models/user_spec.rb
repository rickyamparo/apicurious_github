require 'rails_helper'

RSpec.describe User, type: :model do

  it "creates or updates itself from an oauth hash" do
 #    auth = {"provider"=>"github",
 # :uid =>"19493743",
 # "info"=>
 #  {"nickname"=>"rickyamparo",
 #   "email"=>"rickyamparo@gmail.com",
 #   "name"=>"Ricky Amparo",
 #   "image"=>"https://avatars0.githubusercontent.com/u/19493743?v=4",
 #   "urls"=>
 #    {"GitHub"=>"https://github.com/rickyamparo",
 #     "Blog"=>"RickyAmparo"}},
 # "credentials"=>
 #  {"token"=>"4703444159c058709c1a713d015265e473c0048c",
 #   "expires"=>false},
 # "extra"=>
 #  {"raw_info"=>
 #    {"login"=>"rickyamparo",
 #     "id"=>19493743,
 #     "avatar_url"=>
 #      "https://avatars0.githubusercontent.com/u/19493743?v=4",
 #     "gravatar_id"=>"",
 #     "url"=>"https://api.github.com/users/rickyamparo",
 #     "html_url"=>"https://github.com/rickyamparo",
 #     "followers_url"=>
 #      "https://api.github.com/users/rickyamparo/followers",
 #     "following_url"=>
 #      "https://api.github.com/users/rickyamparo/following{/other_user}",
 #     "gists_url"=>
 #      "https://api.github.com/users/rickyamparo/gists{/gist_id}",
 #     "starred_url"=>
 #      "https://api.github.com/users/rickyamparo/starred{/owner}{/repo}",
 #     "subscriptions_url"=>
 #      "https://api.github.com/users/rickyamparo/subscriptions",
 #     "organizations_url"=>
 #      "https://api.github.com/users/rickyamparo/orgs",
 #     "repos_url"=>"https://api.github.com/users/rickyamparo/repos",
 #     "events_url"=>
 #      "https://api.github.com/users/rickyamparo/events{/privacy}",
 #     "received_events_url"=>
 #      "https://api.github.com/users/rickyamparo/received_events",
 #     "type"=>"User",
 #     "site_admin"=>false,
 #     "name"=>"Ricky Amparo",
 #     "company"=>nil,
 #     "blog"=>"RickyAmparo",
 #     "location"=>"Denver, CO",
 #     "email"=>"rickyamparo@gmail.com",
 #     "hireable"=>nil,
 #     "bio"=>nil,
 #     "public_repos"=>35,
 #     "public_gists"=>11,
 #     "followers"=>2,
 #     "following"=>0,
 #     "created_at"=>"2016-05-20T16:07:58Z",
 #     "updated_at"=>"2017-10-10T22:21:38Z"},
 #   "all_emails"=>[]}}
 #
 #    auth.keys.each do |key|
 #      auth[(key.to_sym rescue key) || key] = auth.delete(key)
 #    end
 #
 #    User.from_omniauth(auth)
 #    new_user = User.first
 #
 #    expect(new_user.uid).to eq("19493743")
 #    expect(new_user.name).to eq("Ricky Amparo")
 #    expect(new_user.login).to eq("rickyamparo")
 #    expect(new_user.profile_pic).to eq("https://avatars0.githubusercontent.com/u/19493743?v=4")
 #    expect(new_user.starred_repos).to eq("https://api.github.com/users/rickyamparo/starred{/owner}{/repo}")
 #    expect(new_user.followers).to eq("https://api.github.com/users/rickyamparo/followers")
 #    expect(new_user.following).to eq("https://api.github.com/users/rickyamparo/following{/other_user}")

  end
end
