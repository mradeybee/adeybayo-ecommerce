class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.belongs_to :cart, foreign_key: true
      t.belongs_to :product, foreign_key: true
      t.integer :quantity, default: 0

      t.timestamps
    end
  end
end
