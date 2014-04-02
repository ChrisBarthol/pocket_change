class AddFieldsToCharities < ActiveRecord::Migration
  def change
    add_column :charities, :name, :string
    add_column :charities, :mission, :text
    add_column :charities, :address1, :text
    add_column :charities, :address2, :text
    add_column :charities, :fax, :string
    add_column :charities, :phone, :text
    add_column :charities, :past1, :text
    add_column :charities, :past2, :text
    add_column :charities, :past3, :text
    add_column :charities, :future1, :text
    add_column :charities, :future2, :text
    add_column :charities, :future3, :text
    add_column :charities, :EIN, :string
  end
end
