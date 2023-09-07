class Patient < ApplicationRecord
    has_many :checkups
    has_many :doctors , through: :checkups
end
