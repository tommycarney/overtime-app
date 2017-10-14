class AuditLogsController < ApplicationController

  def index
    authorize @audit_logs = AuditLog.all.page(params[:page]).per(10)
  end

end
