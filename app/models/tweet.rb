class Tweet < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
