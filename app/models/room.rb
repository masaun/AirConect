class Room < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_many :reservations
  has_many :review

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :home_type, presence: true
  validates :roome_type, presence: true
  validates :accommodate_type, presence: true
  validates :bed_type, presence: true
  validates :bath_type, presence: true
  validates :listeing_name, presence: true, length: {maximum: 50}
  validates :summary, presence: true, length: {maximum: 500}
  validates :address, presence: true

  def average_rating
    reviews.count == 0 ? 0 : review.average(:star).round(2)
  end

end
