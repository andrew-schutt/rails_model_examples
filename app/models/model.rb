class Model < ApplicationRecord
    validates_format_of :email_address, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
    validates :description, length: { maximum: 106 }
end
