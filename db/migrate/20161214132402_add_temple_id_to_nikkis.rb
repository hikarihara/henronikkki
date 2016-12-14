class AddTempleIdToNikkis < ActiveRecord::Migration
  def change
    add_column :nikkis, :temple_id, :integer
  end
end
