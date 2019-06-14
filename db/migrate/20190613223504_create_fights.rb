class CreateFights < ActiveRecord::Migration[5.2]
  def change
    create_table :fights do |t|
      t.string :fight_sequence
      t.references :champion_1, references: :champion
      t.references :champion_2, references: :champion

      t.timestamps
    end
  end
end
