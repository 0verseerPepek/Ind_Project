class Userparam < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    belongs_to :user
    has_many :posts,  :foreign_key => "user_id", :class_name => "Post"
end
