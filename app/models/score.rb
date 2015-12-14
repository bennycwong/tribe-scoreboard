class Score < ActiveRecord::Base
  belongs_to :user
  belongs_to :goal
  scope :today, -> { where(date: Date.today) }
  scope :yesterday, -> { where(date: 1.day.ago) }
  scope :past_seven_days, -> { where('date > ?', 7.day.ago) }

  def points
    return 1 if accomplished
    0
  end
end
