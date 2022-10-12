class People < ApplicationRecord
  validates :description, length: { minimum: 40 }
end
