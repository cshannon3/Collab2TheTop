class AddCreatorentryToEntry < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :creatorentry, :integer
  end
end
