require 'rails_helper'

RSpec.describe Student, type: :model do
  describe "relationships" do
    it { should have_many :course_students }
    it { should have_many(:courses).through(:course_students)}
  end
end
