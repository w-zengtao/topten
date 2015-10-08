class Photo < ActiveRecord::Base

  mount_uploader :media, PhotoUploader
  acts_as_votable
  acts_as_commentable
  acts_as_taggable_on :tags
end