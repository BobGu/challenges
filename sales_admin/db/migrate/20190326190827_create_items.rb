class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :customer_name
      t.string :merchant_name
      t.string :merchant_address
      t.string :status, default: "unsold"
      t.timestamps null: false
      t.belongs_to :report
    end
  end
end
