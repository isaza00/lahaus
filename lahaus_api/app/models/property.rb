class Property < ApplicationRecord
  belongs_to :user
  has_many :photos
  validates :user_id, presence: true
  validates :built_type, inclusion: { in: %w(Casa Apartamento Apartaestudio Lote Penthouse Loft Duplex Casafinca)}
  validates :city, length: { maximum: 255 }
  validates :price, length: { minimum: 7, maximum: 12 }
  validates :address, length: { maximum: 255 }
  validates :admon, length: { maximum: 8 }
  validates :build_area, length: { maximum: 255 }
  validates :private_area, length: { maximum: 255 }
  validates :social_class, inclusion: { in: %w(1 2 3 4 5 6 Industrial) }
  validates :state, length: { maximum: 255 }
  validates :elevator, inclusion: { in: [true, false] }
  validates :common_areas, length: { maximum: 255 }
  validates :property_tax, length: { minimum: 6, maximum: 12 }
  validates :rooms, length: { maximum: 3 }
  validates :bathrooms, length: { maximum: 2 }
  validates :half_bathrooms, length: { maximum: 2 }
  validates :parking_lot, length: { maximum: 2 }
  validates :utility_room, inclusion: { in: [true, false] }
  validates :empty_property, inclusion: { in: [true, false] }
  validates :inhabitants, inclusion: { in: [true, false] }
  validates :rent, length:  { maximum: 8 }
  validates :mortgage, length:  { maximum: 8 }

end
