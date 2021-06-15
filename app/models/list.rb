class List < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :category, optional: true
  attachment :book_image
end
