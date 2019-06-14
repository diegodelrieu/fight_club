class CreateChampions < ActiveRecord::Migration[5.2]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :type
      t.integer :hp
      t.string :description
      t.string :picture

      t.timestamps
    end
  end
end
