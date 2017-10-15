@user = User.create!(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Thomas",
                    last_name: "Carney",
                    phone: "1234567891")

AdminUser.create!(email: "admin@test.com",
                  password: "asdfasdf",
                  password_confirmation: "asdfasdf",
                  first_name: "Thomas",
                  last_name: "Carney",
                  phone: "1234567891")

puts "1 user created"

100.times do |post|

  Post.create!(date: Date.today, rationale: "#{post} Lorem ipsum dolor sit amet, no putent eligendi per, eam ipsum malorum an. No ius prima ubique postea, virtute constituam ea qui. Duo eu altera ponderum adipiscing, sed cu homero probatus. Id pri iudico legendos dignissim. Est an veniam tritani scripserit, pro clita virtute perpetua no.

Debet debitis scaevola eam id, cum id debet scripta, ut mollis electram quo. Vix omnium nostrum an, mandamus patrioque comprehensam mei ei. Quot iuvaret cum ut. Audire commune ea eam, modo purto utroque vim cu. Fastidii torquatos te mel.", user_id: @user.id, overtime_request: 2.5)

end

puts "100 posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, start_date: (Date.today - 6.days))
end

puts "100 audit log have been created"
