class Event < ApplicationRecord
  scope :upcoming, -> { where('start_time > ?', Time.zone.now).order(:start_time) }
end
