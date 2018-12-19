class Post < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    belongs_to :userparam, :foreign_key => "user_id", :class_name => "Userparam"
end
