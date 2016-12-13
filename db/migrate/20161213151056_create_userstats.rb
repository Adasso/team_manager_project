class CreateUserstats < ActiveRecord::Migration[5.0]
  def change
    create_table :userstats do |t|
      t.integer :games_played
      t.integer :minutes_played
      t.integer :goals
      t.integer :yellow_cards
      t.integer :red_cards
      t.belongs_to :user

      t.timestamps
    end
  end
end
