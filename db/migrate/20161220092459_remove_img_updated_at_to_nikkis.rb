class RemoveImgUpdatedAtToNikkis < ActiveRecord::Migration
  def change
    remove_column :nikkis, :img_updated_at, :string
  end
end
