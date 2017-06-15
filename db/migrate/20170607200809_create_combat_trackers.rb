class CreateCombatTrackers < ActiveRecord::Migration[5.0]
  def change
    create_table :combat_trackers do |t|
      t.string :name, null: false
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
