class User < ActiveRecord::Base
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, :email, :age, presence: true
	validates :first_name, :last_name, length: { in: 2..20 }
	# validates :first_name.order (created_at: :desc}
	validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
	validates_numericality_of :age, greater_than: 9, less_than: 150
end
