class Role < ApplicationRecord
# Associations
  has_many :users

# Constants and Variables
  ADMIN = 'Admin'
  PROJECT_MANAGER = 'Project Manager'
  TEAM_LEAD = 'Team Lead'
  DEVELOPER = 'Developer'
end
