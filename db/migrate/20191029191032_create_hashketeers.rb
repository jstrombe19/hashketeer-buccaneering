class CreateHashketeers < ActiveRecord::Migration[5.2]
  def change
    create_table :hashketeers do |t|
      t.string :name
      t.integer :age
      t.string :ship
      t.boolean :captain
      t.timestamps
    end
  end
end
