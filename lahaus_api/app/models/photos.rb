class Photos < ApplicationRecord

    belongs_to :property


    validates :photo_id, presence : true
    validates :amount_photos, allow_nil: true
    define_attribute_methods 'valid_photo'


end