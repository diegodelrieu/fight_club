class AddWeaponToChampions < ActiveRecord::Migration[5.2]
  def change
    add_reference :champions, :weapon, foreign_key: true
  end
end
