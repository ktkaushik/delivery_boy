class CreateSellerCourierDeals < ActiveRecord::Migration
  def change
    create_table :seller_courier_deals do |t|
      t.references :seller
      t.references :courier_company

      t.timestamps
    end
  end
end