class Profile < ApplicationRecord
  has_many :chores
  belongs_to :user
end
