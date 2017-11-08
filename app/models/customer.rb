class Customer < ApplicationRecord
	validates :full_name, presence: true
	validates :phone_number, presence: true, length: { is: 10 }
	validates :image, presence: true
end
