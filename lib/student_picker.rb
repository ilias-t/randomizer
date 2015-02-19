class Cohort
  attr_reader :students
  def initialize(students)
    @students = students
  end

  def random
    @students.delete(@students.sample)
  end
end



