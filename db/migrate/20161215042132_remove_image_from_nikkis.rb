class RemoveImageFromNikkis < ActiveRecord::Migration
  def change
    remove_column :nikkis, :image, :string
  end
end
