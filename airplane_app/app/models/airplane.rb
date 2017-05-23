class Airplane < ActiveRecord::Base
  # first symbol says which field
  # presence: true - must have a value
  # uniqueness: true - must not have been used before
  # length: { minimum: 6 } - must be at least 6 characters
  validates :name, presence: true, uniqueness: true, length: {minimum: 6}
end
