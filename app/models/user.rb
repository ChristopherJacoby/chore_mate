class User < ApplicationRecord
  has_many :profiles
  has_many :rooms
end
