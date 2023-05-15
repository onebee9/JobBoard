# Schema Information
#
# Table name: companies
#
#  id         :bigint           not null, primary key
#  industry   :string
#  location   :string
#  name       :string
#  size       :string
#  website    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Company < ApplicationRecord
  has_many :job_posts, dependent: :destroy
  validates_presence_of :name, :location
  validates :website, format: { with: %r{\Ahttps?://\S+\z} }, allow_blank: true
end
