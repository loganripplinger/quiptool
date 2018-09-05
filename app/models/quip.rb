class Quip < ApplicationRecord
	has_many :comments, dependent: :destroy

	validates :text, presence: true,
					 length: { minimum: 1}

	validates :author, presence: true


	# validates :branch, presence: true
end
