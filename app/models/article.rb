class Article < ApplicationRecord
        include Visible
        # default_scope { where(id: true) }
        scope :id_more_than, ->(id_no) { where("id > ?", id_no) if id_no.present? }

        has_many :comments, dependent: :destroy, inverse_of: :article
        # has_one :comment, dependent: :destroy
        validates :article_type, acceptance: true
        validates_associated :comments
        validates :title, presence: true
        validates :email, presence: true, confirmation: true
        validates :email_confirmation, presence: true
        validates :body, presence: true, length: { minimum: 10, too_short: "10 characters is the minimum"  }

        # before_create do
        #         self.name = title.capitalize if title.blank?
        # end
        
        after_find do |article|
                puts "You have found an object!"
        end
        
        after_initialize do |article|
                puts "You have initialized an object!"
        end

        after_touch do |article|
                puts "You have touched an object"
        end

end
