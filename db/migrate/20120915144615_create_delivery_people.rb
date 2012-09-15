class CreateDeliveryPeople < ActiveRecord::Migration
  def change
    create_table :delivery_people do |t|
      t.string :name
      t.references :courier_company
      t.timestamps
    end
  end
end
