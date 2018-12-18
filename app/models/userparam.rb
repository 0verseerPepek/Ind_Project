class Userparam < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    belongs_to :user
    has_many :posts
end
