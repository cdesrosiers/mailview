require_dependency "mailview/application_controller"

module Mailview
  class MailsController < ApplicationController
		http_basic_authenticate_with :name => Mailview.username, :password => Mailview.password

		def index
			@mails = Mail.order("created_at DESC").all
		end
  end
end
