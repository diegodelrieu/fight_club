class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :attack_damage
      t.string :description
      t.string :picture

      t.timestamps
    end
  end
end
