class Quip < ApplicationRecord
	has_many :diffs, dependent: :destroy

	validates :author, presence: true


	# validates :branch, presence: true
end
