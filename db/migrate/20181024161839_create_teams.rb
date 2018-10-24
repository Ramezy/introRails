class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :key
      t.string :name
      t.string :code
      t.references :match, foreign_key: true
      t.references :season, foreign_key: true

      t.timestamps
    end
  end
end
