class AddBasicFieldsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :profile_pic, :string
    add_column :users, :starred_repos, :string
    add_column :users, :followers, :string
    add_column :users, :following, :string
  end
end
