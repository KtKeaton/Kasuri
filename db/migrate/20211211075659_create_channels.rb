class CreateChannels < ActiveRecord::Migration[6.1]
  def change
    create_table :channels do |t|
      t.string :name
      t.string :topic
      t.text :description
      t.references :space, null: false, foreign_key: true

      t.timestamps
    end
  end
end
