class AddMobileNoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :mobile_no, :string
    add_column :users, :address, :string
  end
end
