class AddEntryRefToResources < ActiveRecord::Migration[5.2]
  def change
    add_reference :resources, :entry, foreign_key: true
  end
end
