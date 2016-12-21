class RemoveImgFileSizeToNikkis < ActiveRecord::Migration
  def change
    remove_column :nikkis, :img_file_size, :string
  end
end
