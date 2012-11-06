require "mailview/engine"

module Mailview
	mattr_accessor :username
	mattr_accessor :password

	def self.setup
		yield self
	end
end
