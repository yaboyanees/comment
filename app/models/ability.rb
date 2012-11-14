class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.role_name == "Client"
      can :read, :all
    elsif user.role_name ==  "Manager"
      can :manage, :all
    elsif user.role_name ==  "Employee"
      can :update, :all
    elsif user.role_name == "Admin"
      can :manage, :all
    end
  end
end
