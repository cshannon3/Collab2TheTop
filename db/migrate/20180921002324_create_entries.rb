class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :title
      t.string :url1
      t.string :url2
      t.integer :score

      t.timestamps
    end
  end
end
