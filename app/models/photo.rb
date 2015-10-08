class Photo < ActiveRecord::Base

  mount_uploader :media, PhotoUploader
  acts_as_votable
end
