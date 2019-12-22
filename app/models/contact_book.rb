class ContactBook < ApplicationRecord
  belongs_to :parent
  belongs_to :contact_book

end
