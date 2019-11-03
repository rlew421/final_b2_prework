require 'rails_helper'

RSpec.describe CourseStudent, type: :model do
  describe "relationships" do
    it { should belong_to :course }
    it { should belong_to :student }
  end
end
