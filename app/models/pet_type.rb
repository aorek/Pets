class PetType < ApplicationRecord
  has_one :pets
  def name_type
    "#{type_name}"
  end
end
