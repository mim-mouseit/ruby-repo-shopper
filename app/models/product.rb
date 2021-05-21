class Product < ApplicationRecord
    validates :product_name, presence: true,
                            length: {minimum: 5}
end
