class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:Login]
        def email_required?
          false
        end
      
        def email_changed?
          false
        end
        def will_save_change_to_email?
          false
        end
        has_one :userparam  
end
