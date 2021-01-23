class User < ApplicationRecord
  mount_uploader :user_image, UserImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :rooms, through: :reservation
  has_many :reservations, dependent: :destroy
end
