namespace :notification do
  desc "Sends sms notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    include Rails.application.routes.url_helpers
    if Time.now.tuesday?

      employees = Employee.all
      notification_message = "Please log into the overtime management dashboard to request overtime or confirm hours for last week: http://localhost:3000"

      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end
    end
  end

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all
    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end

end
