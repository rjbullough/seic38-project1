class User < ApplicationRecord
  has_many :entries
  has_many :items, through: :entries
end
