class Comment < ApplicationRecord
  include Visible

  belongs_to :article   , counter_cache: :count_of_comments, inverse_of: :comments
  has_many :tags , as: :taggable
  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Comments deleted'
  end
  
end
