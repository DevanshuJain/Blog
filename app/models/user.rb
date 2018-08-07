class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

# before_create :confirmation_token


  has_one_attached :avatar
  has_one :address , dependent: :destroy
  accepts_nested_attributes_for :address


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable

# def email_activate
#     self.email_confirmed = true
#     self.confirm_token = nil
#     save!(:validate => false)
#   end



#   private
# def confirmation_token
#       if self.confirm_token.blank?
#           self.confirm_token = SecureRandom.urlsafe_base64.to_s
#       end
#     end
end
