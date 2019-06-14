class AddShieldToChampions < ActiveRecord::Migration[5.2]
  def change
    add_reference :champions, :shield, foreign_key: true
  end
end
