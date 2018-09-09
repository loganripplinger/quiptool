class Diff < ApplicationRecord
  	belongs_to :quip

	validates :text, presence: true,
					 length: { minimum: 1}

	validates :author, presence: true

end
