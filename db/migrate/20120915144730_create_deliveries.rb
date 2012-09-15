class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.string :item_name
      t.references :delivery_person
      t.timestamps
    end
  end
end
