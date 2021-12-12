class CreateSpaceUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :space_users do |t|
      t.references :Space, null: false, foreign_key: true
      t.references :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
