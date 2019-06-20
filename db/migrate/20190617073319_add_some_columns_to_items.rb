class AddSomeColumnsToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :purchased_date, :date
    add_reference :items, :user, index: true, null: false
  end
end
