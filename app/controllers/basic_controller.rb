class BasicController < ApplicationController

  def fetch_data_based_on_role
    method_name = current_user.role.role_name.gsub(' ', '').underscore.to_sym
    self.__send__(method_name)
  end

  private

    def admin
      @projects = Project.limit(10)
      render 'admin'
    end

    def project_manager
      #List all the Projects and team members respect to the current user
    end

    def team_lead
      #List all the tasks and team members respect to the current user
    end

    def developer
      #List all the task assigned to the current user
    end
end
