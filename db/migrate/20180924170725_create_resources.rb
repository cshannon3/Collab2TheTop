class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :url
      t.text :description
      t.string :resource_type

      t.timestamps
    end
  end
end
