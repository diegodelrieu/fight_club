class CreateInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :instances do |t|
      t.references :champion, foreign_key: true
      t.references :weapon, foreign_key: true
      t.references :shield, foreign_key: true

      t.timestamps
    end
  end
end
