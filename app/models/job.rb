class Job < ApplicationRecord
  belongs_to :company
  belongs_to :creator, class_name: 'User', foreign_key: 'created_by'
  has_many :applications

end
