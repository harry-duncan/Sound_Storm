class AddSocialGithubToUser < ActiveRecord::Migration
  def change
    add_column :users, :social_github, :text
  end
end
