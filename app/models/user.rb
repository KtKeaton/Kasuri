class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :space_users, dependent: :destroy
  has_many :spaces, through: :space_users
  has_many :channel_users, dependent: :destroy
	has_many :channels, through: :channel_users
  has_many :messages, dependent: :destroy
end
