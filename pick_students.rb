require_relative 'lib/student_picker'
require_relative 'lib/assets/awk_turtle'
require_relative 'lib/assets/student_list'

wdi14 = Cohort.new(STUDENTS)

STUDENTS.count.times do
  p "Now presenting... #{wdi14.random}!"
  print ">> "
  input = gets.chomp
  if wdi14.students.count == 0
    AwkwardTurtle.animate
  end
end