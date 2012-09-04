class AddPriceToUsers < ActiveRecord::Migration
  def change
  	 add_column :users, :price, :integer
  end
end
