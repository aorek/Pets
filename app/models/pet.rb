class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :pet_type
  validates :name, :age, :pet_type_id, :gender, :alive, presence: true
  validate :pet_count, :on => :create

  def pet_count
    if self.user.pets(:reload).count >= 5
      errors.add(:base, "The user can only have 5 pets.")
    end
  end
end
