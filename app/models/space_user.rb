class SpaceUser < ApplicationRecord
  belongs_to :Space
  belongs_to :User
end
