class PostPolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    user.present?
  end

  def update?
    return true if user.present? && user == post.user
  end

  def destroy?
    return true if user.admin
  end

  private

    def article
      record
    end
end
