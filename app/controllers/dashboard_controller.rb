class DashboardController < BasicController

  def index
    fetch_data_based_on_role
  end
end
