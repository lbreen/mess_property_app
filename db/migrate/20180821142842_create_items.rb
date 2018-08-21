class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :location
      t.integer :reference_number
      t.text :comments
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
