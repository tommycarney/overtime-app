class PostPolicy < ApplicationPolicy

  def update?
    record.user_id == user.id || ApplicationPolicy.admin_type.include?(user.type)
  end
end
