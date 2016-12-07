class CreateTeamstats < ActiveRecord::Migration[5.0]
  def change
    create_table :teamstats do |t|
      t.integer :games_played
      t.integer :average_possesion
      t.integer :offsides
      t.integer :goals_conceded
      t.integer :passing_accuracy
      t.integer :goals
      t.integer :yellow_cards
      t.integer :red_cards
      t.belongs_to :group

      t.timestamps
    end
  end
end
