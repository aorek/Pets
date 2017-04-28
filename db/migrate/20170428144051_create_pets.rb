class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :gender
      t.string :type
      t.integer :age
      t.boolean :alive
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
