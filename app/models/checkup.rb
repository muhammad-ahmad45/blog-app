class Checkup < ApplicationRecord
  belongs_to :check    polymorphic: true
  # belongs_to :doctor
end
