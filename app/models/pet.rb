class Pet < ApplicationRecord
  belongs_to :user
  validate :pet_count, :on => :create

  def pet_count
    if self.user.pets(:reload).count >= 5
      errors.add(:base, "Exceeded pet limit")
    end
  end
end
