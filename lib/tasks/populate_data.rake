namespace :populate_data do
  desc "This task will create roles needs to be assigned for the users"
  task populate_roles: :environment do
    ['Admin', 'Project Manager', 'Team Lead', 'Developer'].each do|role_name|
      Role.create!(role_name:role_name)
    end
  end

  desc "This task will create users"
  task populate_users: :environment do
    users_hash = [
      {first_name: 'Francis', last_name: 'Dsouza', email: 'admin@madrinmail.com', role_id: Role.where(role_name: 'Admin').first.id},
      {first_name: 'Malik', last_name: 'Den', email: 'project_manager@madrinmail.com', role_id: Role.where(role_name: 'Project Manager').first.id},
      {first_name: 'Mevi', last_name: 'Chil', email: 'team_lead@madrinmail.com', role_id: Role.where(role_name: 'Team Lead').first.id},
      {first_name: 'Hijas', last_name: 'Manzil', email: 'devleoper@madrinmail.com', role_id: Role.where(role_name: 'Developer').first.id},
    ]
    users_hash.each do |hash|
      user = User.where(email: hash[:email]).first_or_create
      user.first_name = hash[:first_name]
      user.last_name = hash[:last_name]
      user.role_id = hash[:role_id]
      user.password = '123456'
      user.password_confirmation = '123456'
      user.save!
    end
  end
end
