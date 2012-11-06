module Mailview
	class Mail < ActiveRecord::Base
		attr_accessible :html

		def self.save_message!(message)
			text = message.body.inspect

			links = URI.extract text, :http

			links.each do |link|
				uri = link.gsub /[.,]\z/, ''
				anchor = "<a href=#{uri}>#{uri}</a>"
				text.sub! uri, anchor
			end

			html = "<p>#{text.gsub("\n", "<br/>")}</p>"

			create!(html: html)
		end
	end
end
