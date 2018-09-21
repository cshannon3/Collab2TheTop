class AddGithubusernameToChallenge < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :githubusername, :string
  end
end
