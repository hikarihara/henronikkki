class RemoveNameFromNikkis < ActiveRecord::Migration
  def change
    remove_column :nikkis, :name, :string
  end
end
