class Professor < ActiveRecord::Base
  has_many :teaching_assistants
  has_many :course_tas, through: :teaching_assistants, source: :ta_duty, source_type: 'Course'
  has_many :lab_tas, through: :teaching_assistants, source: :ta_duty, source_type: 'Lab'
end
