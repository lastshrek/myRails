class User < ApplicationRecord
	attr_accessor :name, :email

	def initialize(attributes = {})
		@name = attributes[:name]
		@email = attributes[:email]
	end

	def formatted_email
	  "#{@name} <#{@email}>"
	end
	has_many :microposts
end
