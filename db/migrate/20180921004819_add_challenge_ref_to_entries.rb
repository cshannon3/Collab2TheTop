class AddChallengeRefToEntries < ActiveRecord::Migration[5.2]
  def change
    add_reference :entries, :challenge, foreign_key: true
  end
end
