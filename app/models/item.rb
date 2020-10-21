class Item < ApplicationRecord
  belongs_to :entry, optional: true
  before_save :update_energy
  def update_energy
    self.energy ||= (self.protein * 4) + (self.carb * 4) + (self.fat * 9)
  end

end
