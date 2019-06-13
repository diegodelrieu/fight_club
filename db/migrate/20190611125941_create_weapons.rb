class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.integer :attack_damage
      t.integer :crit_chance
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
