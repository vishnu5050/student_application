class CollApplication < ActiveRecord::Base
  belongs_to :student
  belongs_to :college

  validate :student_eligible
  validate :already_applied

  def student_eligible
    if (Student.find(self.student_id).sat_score < College.find(self.college_id).min_sat_score)
        errors.add(:field, 'Student not eligible')
    end
  end

  def already_applied
    student = Student.find(self.student_id)
    unless student.colleges.nil?
        colleges = student.colleges.includes(:coll_applications).where('coll_applications.college_id  = ?', self.college_id)
        unless colleges.empty?
            errors.add(:field, 'Already applied')
        end
    end
  end
end
