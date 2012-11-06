module Mailview
	class Mail < ActiveRecord::Base
		attr_accessible :html

		def self.save_message!(message)
			text = message.body.inspect

			html = "<p>#{text.gsub("\n", "")}</p>"

			create!(html: html)
		end
	end
end
