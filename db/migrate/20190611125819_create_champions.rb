class CreateChampions < ActiveRecord::Migration[5.2]
  def change
    create_table :champions do |t|
      t.string :name
      t.integer :hp
      t.integer :attack_damage
      t.string :description
      t.integer :crit_chance

      t.timestamps
    end
  end
end
