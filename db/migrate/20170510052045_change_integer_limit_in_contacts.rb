class ChangeIntegerLimitInContacts < ActiveRecord::Migration[5.0]
  def change
    change_column :contacts, :phone, :integer, limit: 8
  end
end
