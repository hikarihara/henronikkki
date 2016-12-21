class RemoveImgFileNameToNikkis < ActiveRecord::Migration
  def change
    remove_column :nikkis, :img_file_name, :string
  end
end
