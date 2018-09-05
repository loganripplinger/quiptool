class Quip < ApplicationRecord
	has_many :comments

	validates :text, presence: true,
					 length: { minimum: 1}

	validates :author, presence: true


	# validates :branch, presence: true
end
