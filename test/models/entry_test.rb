require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test "date validation" do
     entry=Entry.new
     entry.author="test"
     entry.photo_url="test"
     entry.date_taken=Date.new(2009,1,1)
     entry.validate
     assert entry.errors.size ==1
   end
end
