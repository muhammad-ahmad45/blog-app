class Post < ApplicationRecord
    has_many :tags , as: :taggable
end
