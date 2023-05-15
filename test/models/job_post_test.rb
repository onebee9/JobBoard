# == Schema Information
#
# Table name: job_posts
#
#  id                   :bigint           not null, primary key
#  additional_data      :text
#  application_deadline :datetime
#  benefits             :text
#  compensation_max     :string
#  compensation_min     :string
#  contact_for_role     :string
#  description          :text
#  education_preferred  :string
#  education_required   :string
#  experience_max       :integer
#  experience_min       :integer
#  location             :string
#  title                :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
require "test_helper"

class JobPostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
