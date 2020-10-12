class Property < ApplicationRecord
  belongs_to :user
  has_many :photos
  validates :user_id, presence: true
  validates :built_type, inclusion: { in: %w(Casa Apartamento Apartaestudio Lote Penthouse Loft Duplex Casafinca)}
  validates :city, length: { maximum: 255 }
  validates :price, length: { minimum: 7, maximum: 12 }
  validates :address, length: { maximum: 255 }
<<<<<<< HEAD
  validates :admon, length: { maximum: 8 }
  validates :build_area, length: { maximum: 255 }
=======
  validates :apt, length: { maximum: 5 }
  validates :tower, length: { maximum: 20 }
  validates :hood, length: { maximum: 255 }

>>>>>>> b2625126b6fbaefdefb6b77eeb6148aa0c25b8de
  validates :private_area, length: { maximum: 255 }
  validates :social_class, inclusion: { in: %w(1 2 3 4 5 6 Industrial) }
  validates :state, lenght: { maximum: 255 }
  validates :elevator, inclusion: { in: %w(true false) }
  validates :common_areas, lenght: { maximum: 255 }
  validates :property_tax, lenght: { minimum: 6, maximum: 12 }
  validates :rooms, lenght: { maximum: 3 }
  validates :bathrooms, lenght: { maximum: 2 }
  validates :half_bathrooms, lenght: { maximum: 2 }
  validates :parking_lot, lenght: { maximum: 2 }
  validates :utility_room, inclusion: { in: %w(true false) }
  validates :empty_property, inclusion: { in: %w(true false) }
  validates :inhabitants, inclusion: { in: %w(true false) }
  validates :rent, lenght:  { maximum: 8 }
  validates :morgage, lenght:  { maximum: 8 }

end
