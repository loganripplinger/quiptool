class Comment < ApplicationRecord
  belongs_to :quip

	validates :quip, presence: true,
				 length: { minimum: 1}

	validates :commenter, presence: true

end
