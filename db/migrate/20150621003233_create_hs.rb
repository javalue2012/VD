class CreateHs < ActiveRecord::Migration
  def change
    create_table :hs do |t|
      t.string :name
      t.string :age
      t.string :gmail
      t.string :password

      t.timestamps null: false
    end
  end
end
