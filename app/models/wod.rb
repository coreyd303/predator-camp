# == Schema Information
#
# Table name: wods
#
#  id           :integer          not null, primary key
#  duration     :string
#  workout_type :string
#  workout      :text
#  created_at   :datetime
#  updated_at   :datetime
#  title        :string
#  workout_date :string
#  pub_status   :string
#

class Wod < ActiveRecord::Base
  validates :title,
            :duration,
            :workout_type,
            :workout,
            :workout_date,
            :pub_status, presence: true

  WORKOUT_TYPES = [ "Strength", "MetCon", "Run / RuckRun", "Dry Fire", "Live Fire", "Hero" ]
end
