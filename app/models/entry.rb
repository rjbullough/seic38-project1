class Entry < ApplicationRecord
  belongs_to :user, optional: true
  has_many :items
  scope :todays_entries, -> { where(date: Date.yesterday)
                              .map { |entry| entry.items }
                              .flatten }
  
end
