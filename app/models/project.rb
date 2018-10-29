class Project < ApplicationRecord

# Association
  belongs_to :user
  has_many :users, :through => :team
end
