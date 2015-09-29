class Photo < ActiveRecord::Base

  mount_uploader :media, PhotoUploader
end
