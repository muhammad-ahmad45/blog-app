class Article < ApplicationRecord
        include Visible

        has_many :comments, dependent: :destroy
        validates :article_type, acceptance: true
        validates_associated :comments
        validates :title, presence: true
        validates :email, presence: true, confirmation: true
        validates :email_confirmation, presence: true
        validates :body, presence: true, length: { minimum: 10, too_short: "10 characters is the minimum"  }

end
