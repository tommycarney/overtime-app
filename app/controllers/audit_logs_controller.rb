class AuditLogsController < ApplicationController

  def index
    authorize @audit_log = AuditLog.all
  end

end
