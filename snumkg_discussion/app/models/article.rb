#coding: utf-8
class Article < ActiveRecord::Base
  attr_accessible :title, :body, :writer
	has_many :comments
	
	def state_string
		if self.state == 0
			"제안"
		elsif self.state == 1
		 	"구현중"
		elsif self.state == 2
			"구현완료"
		elsif self.state == 3
			"폐기"
		end
	end

	def state_badge
		if self.state == 0
			"badge-info"
		elsif self.state == 1
			"badge-warning"
		elsif self.state == 2
			"badge-important"
		elsif self.state == 3
			"badge"
		end
	end
end
