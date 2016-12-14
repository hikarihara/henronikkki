class Nikki < ActiveRecord::Base
  belongs_to :user
  belongs_to :temple
end
