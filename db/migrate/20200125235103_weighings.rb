class Weighings < ActiveRecord::Migration[5.2]
  def change
    create_table :weighings do |t|
      t.integer :weight, null: false
      t.date :weighed_at, null: false, unique: true
      t.timestamps
    end
  end
end
