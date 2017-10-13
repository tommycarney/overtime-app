namespace :notification do
  desc "sends sms notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    # 1. schedule to run at Sunday at 5 pm
    # 2. Iterate over all employees
    # 3. Skip admin users
    # 4. Send a msg that has instructions and link to log time
    User.all.each do |user|
      SmsTool.send_sms()
    end
  end

end
