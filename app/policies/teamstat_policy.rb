class TeamstatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    user.has_role? :admin or user.has_role? :coach
  end

  def edit?
    user.has_role? :admin or user.has_role? :coach
  end

  def create?
    user.has_role? :admin or user.has_role? :coach
  end

  def update?
    user.has_role? :admin or user.has_role? :coach
  end

  def destroy?
    user.has_role? :admin
  end
end
