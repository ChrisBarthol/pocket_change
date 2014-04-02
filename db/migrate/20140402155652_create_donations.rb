class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :user_id
      t.integer :charity_id
      t.decimal :amount

      t.timestamps
    end
  end
end
