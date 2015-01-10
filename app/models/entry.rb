class Entry < ActiveRecord::Base
  validates_presence_of :author
  validates_presence_of :photo_url
  validates_presence_of :date_taken
  validate :validate_date_taken

def validate_date_taken
  if date_taken < Date.new(2010,10,1)
    errors.add(:taken_date, "is older than 10/1/2010")
  end
end
end


