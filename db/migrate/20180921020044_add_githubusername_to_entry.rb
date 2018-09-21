class AddGithubusernameToEntry < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :githubusername, :string
  end
end
