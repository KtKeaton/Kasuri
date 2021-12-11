class Channel < ApplicationRecord
  has_many :channel_users, dependent: :destroy
	has_many :users, through: :channel_users
  belongs_to :space
end
