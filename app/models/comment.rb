class Comment < ApplicationRecord
  include Visible

  belongs_to :article
  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Comments deleted'
  end
  
end
