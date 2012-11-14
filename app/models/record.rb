class Record < ActiveRecord::Base
  attr_accessible :doctor, :reason_for_visit, :specialty
end
