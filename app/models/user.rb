class User < ActiveRecord::Base
  include Clearance::User
  has_many :scores
  has_many :goals

  def name
    "#{first_name} #{last_name}"
  end

  def total_score
    sum_up_points self.scores
  end

  def daily_score
    sum_up_points self.scores.today
  end

  def past_seven_days
    sum_up_points scores.past_seven_days
  end
  
private
  def sum_up_points scores
    points = 0
    scores.each do | score |
      points = points + score.points
    end
    points
  end

end
