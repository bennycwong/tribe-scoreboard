class Goal < ActiveRecord::Base
  belongs_to :user
  belongs_to :type
  has_many :scores
  scope :sorted, lambda {
    joins(:type)
  }
  scope :sorted_by_type, -> { order("id DSC") }

end
