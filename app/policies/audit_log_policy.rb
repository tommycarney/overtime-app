class AuditLogPolicy < ApplicationPolicy

  def index?
    return true if admin
  end

  def confirm?
    user.id == record.user.id
  end

  private
    def admin
        ApplicationPolicy.admin_types.include?(user.type)
    end
end
