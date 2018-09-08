class Comment < ApplicationRecord
  belongs_to :quip

	validates :author, presence: true

	validates :text, presence: true,
				 length: { minimum: 1}


end
