class Item < ApplicationRecord
  belongs_to :entry, optional: true
end
