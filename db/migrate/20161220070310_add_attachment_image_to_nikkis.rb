class AddAttachmentImageToNikkis < ActiveRecord::Migration
  def self.up
    change_table :nikkis do |t|
      t.has_attached_file :image
    end
  end
 
  def self.down
    drop_attached_file :nikkis, :image
  end
end
