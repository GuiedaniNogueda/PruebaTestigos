class Creative < ActiveRecord::Base
	belongs_to :order

	has_many :images

	has_many :pages
	has_many :lines, through: :pages

	validates :creative_name, presence: true,
						 format: {
							 	with: /\A[a-zA-z0-9 _]+\z/,
							 	message: 'Ingrese caracteres alfanuméricos'
							 }
end
