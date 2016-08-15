class Room < ActiveRecord::Base
  belongs_to :user

  validates :home_type, presence: true
  validates :roome_type, presence: true
  validates :accommodate_type, presence: true
  validates :bed_type, presence: true
  validates :bath_type, presence: true
  validates :listeing_name, presence: true, length: {maximum: 50}
  validates :summary, presence: true, length: {maximum: 500}
  validates :address, presence: true
end
