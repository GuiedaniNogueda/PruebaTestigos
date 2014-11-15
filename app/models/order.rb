class Order < ActiveRecord::Base
	has_many :creatives
	has_many :lines

	validates :order_number, presence: true,
							 uniqueness: true,
							 length: {
							 	is: 6
							 },
							 format: {
							 	with: /\A[0-9]+\z/,
							 	message: 'Ingrese solo números'
							 }
	validates :campaign, presence: true,
						 format: {
							 	with: /\A[a-zA-z0-9 ]+\z/,
							 	message: 'Ingrese caracteres alfanuméricos'
							 }
	validates :agency_id, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :site_id, presence: true
end
