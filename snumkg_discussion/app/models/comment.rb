class Comment < ActiveRecord::Base
  attr_accessible :title, :body, :article_id, :writer
	belongs_to :article
end
