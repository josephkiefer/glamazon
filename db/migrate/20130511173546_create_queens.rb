class CreateQueens < ActiveRecord::Migration
  def change
    create_table :queens do |t|
      t.string :name
      t.boolean :is_winner
      t.boolean :is_allstar
      t.text :bio
      t.integer :season_id

      t.timestamps
    end
  end
end
