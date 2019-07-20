class Item < ApplicationRecord
acts_as_paranoid

has_many :carts, dependent: :destroy
has_many :disks, inverse_of: :item, dependent: :destroy
has_many :order_details, dependent: :destroy
has_many :songs, through: :disks
attachment :item_image

accepts_nested_attributes_for :disks, allow_destroy: true



belongs_to :artist

belongs_to :genre

belongs_to :label

	def self.search(search)
		if search
			where(['item_name LIKE ?', "%#{search}%"])
		else
			all
		end
	end
end
