require_relative 'spec_helper'
require_relative '../lib/student_picker'

describe "cohort" do
  let!(:cohort){Cohort.new(["Jimi", "Alice", "Bob"])}

  it "returns all the students" do
    expect(cohort.students).to eq(["Jimi", "Alice", "Bob"])
  end

  it "picks a random student from the cohort" do
    expect(cohort.random).to be_an_instance_of String
  end

  it "removed the picked student from the set of students" do
    random_student = cohort.random
    expect(cohort.students).not_to include(random_student)
  end

end