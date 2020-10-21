class Entry < ApplicationRecord
  belongs_to :user, optional: true

  has_many :items
  accepts_nested_attributes_for :items, allow_destroy: true

  scope :todays_entries, -> { where(date: Date.today)
                              .map { |entry| entry.items }
                              .flatten }
  
end
# 