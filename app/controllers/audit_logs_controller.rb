class AuditLogsController < ApplicationController

  def index
    authorize(@audit_logs = AuditLog.all.page(params[:page]).per(10))
  end

  def confirm
    audit_log = AuditLog.find(params[:id])
    authorize(audit_log)
    audit_log.confirmed!
    redirect_to root_path, notice: "Thank you, you have successfully confirmed the audit log."
  end

end
