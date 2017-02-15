class Message < ActiveRecord::Base
  belongs_to :post

  validates :message, presence: true, length: { minimum: 15 }
  validates :author, presence: true
end
