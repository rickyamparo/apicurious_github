class User < ActiveRecord::Base

  def self.from_omniauth(auth_info)
    where(uid: auth_info[:uid]).first_or_create do |new_user|
      new_user.uid                = auth_info.uid
      new_user.name               = auth_info.extra.raw_info.name
      new_user.login              = auth_info.extra.raw_info.login
      new_user.profile_pic        = auth_info.extra.raw_info.avatar_url
      new_user.starred_repos      = auth_info.extra.raw_info.starred_url
      new_user.followers          = auth_info.extra.raw_info.followers_url
      new_user.following          = auth_info.extra.raw_info.following_url
      new_user.oauth_token        = auth_info.credentials.token
    end
  end

end
