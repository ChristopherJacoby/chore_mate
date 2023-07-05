class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.references :profile, foreign_key: true
      t.references :room, foreign_key: true
      t.string :username, :email

      t.timestamps
    end
  end
end
