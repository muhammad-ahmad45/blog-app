class Doctor < ApplicationRecord
    has_many :checkups
    has_many :patients , through: :checkups

end
