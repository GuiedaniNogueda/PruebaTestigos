class Line < ActiveRecord::Base
	belongs_to :order

	has_many :pages
	has_many :creatives, through: :pages

	validates :line_number, presence: true,
							 uniqueness: true,
							 length: {
							 	is: 6
							 },
						 	 format: {
							 	with: /\A[0-9]+\z/,
							 	message: 'Ingrese solo números'
							 }
    validates :format_id, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
end
