class AddEmailToSellerAndCourierCompany < ActiveRecord::Migration
  def change
    add_column :sellers, :email, :string
    add_column :courier_companies, :email, :string
  end
end