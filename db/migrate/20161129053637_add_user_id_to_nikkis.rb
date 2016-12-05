class AddUserIdToNikkis < ActiveRecord::Migration
  def change
    add_column :nikkis, :user_id, :integer
  end
end
