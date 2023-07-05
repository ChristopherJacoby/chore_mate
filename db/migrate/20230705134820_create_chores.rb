class CreateChores < ActiveRecord::Migration[7.0]
  def change
    create_table :chores do |t|
      t.references :profile, null: false, foreign_key: true
      t.references :room, foreign_key: true
      t.string :name, :description

      t.timestamps
    end
  end
end
