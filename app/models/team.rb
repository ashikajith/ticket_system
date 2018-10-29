class Team < ApplicationRecord
  # Associations

  belongs_to :project
  belongs_to :user
end
