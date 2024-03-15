class Url < ApplicationRecord

  validates :long_url, presence: true
  validates :short_url, presence: true
  validate :expired?

  def expired?
    if start_date + 60 * 60 * 24 < Time.zone.now
      errors.add(:start_date, 'This url has expired')
    end
  end
end
