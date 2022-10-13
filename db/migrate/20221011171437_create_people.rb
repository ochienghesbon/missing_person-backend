class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :image
      t.string :name
      t.integer :age
      t.string :location
      t.string :description
      t.boolean "is_missing", default: true, null: false

      t.timestamps
    end
  end
end
