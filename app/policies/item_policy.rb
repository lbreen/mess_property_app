class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    user
  end

  def create?
    user
  end

  def update?
    user
  end

  def destroy?
    user
  end
end
