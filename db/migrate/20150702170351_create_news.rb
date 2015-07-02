class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :title
      t.text :t1
      t.text :t2
      t.text :t3
      t.text :t4
      t.text :t5
      t.text :t6

      t.timestamps null: false
    end
  end
end
