class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :name
      t.references :season, foreign_key: true
      t.datetime :date
      t.integer :homeTeamScore
      t.integer :awayTeamScore

      t.timestamps
    end
  end
end
