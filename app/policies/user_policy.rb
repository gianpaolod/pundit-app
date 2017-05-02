class UserPolicy
  attr_reader :current, :model
  
  def initialize(current_user, model)
    @current_user = current_user
    @user = model
  end
  
  def index?
    @current_user.admin?
  end
  
  def show?
    @current_user.admin? || @current_user == @user
  end
end