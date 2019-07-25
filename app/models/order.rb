class Order < ApplicationRecord
acts_as_paranoid

belongs_to :enduser
belongs_to :shipping, optional: true
has_many :order_details, dependent: :destroy

enum payment: { 銀行振込で支払い: 1, クレジットカードで支払い: 2, 代引きで支払い: 3, 葛西に奢らせる: 4 }
validates :shipping_id, presence: true


end
