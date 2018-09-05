class Quip < ApplicationRecord
	validates :text, presence: true,
					 length: { minimum: 1}

	validates :author, presence: true

	# validates :branch, presence: true
end
