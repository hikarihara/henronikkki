class AddAttachmentImgToNikkis < ActiveRecord::Migration
  def self.up
    change_table :nikkis do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :nikkis, :img
  end
end
