class Comment < ApplicationRecord
  before_save :check_author
  belongs_to :item

  def check_author
    if self.author.blank?
      self.author = "Anonymous"
    end
  end
end
