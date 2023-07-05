class Room < ApplicationRecord
  has_many :chores
  belongs_to :user
end
