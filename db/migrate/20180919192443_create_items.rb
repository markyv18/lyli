class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :fit
      t.integer :style
      t.integer :color
      t.integer :features
      t.integer :price_point
      t.integer :keep
      t.text :feedback
    end
  end
end
