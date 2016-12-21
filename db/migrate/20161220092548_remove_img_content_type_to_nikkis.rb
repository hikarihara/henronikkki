class RemoveImgContentTypeToNikkis < ActiveRecord::Migration
  def change
    remove_column :nikkis, :img_content_type, :string
  end
end
