class Nikki < ActiveRecord::Base
  belongs_to :user
  belongs_to :temple

  has_attached_file :img,
                      styles:  { medium: "300x300#", thumb: "100x100#" }
  validates_attachment_content_type :img,
                                      content_type: ["image/jpg","image/jpeg","image/png"]
end
