@employee = Employee.create!(email: "tommycarney@gmail.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Thomas",
                    last_name: "Carney",
                    phone: "1638687560")

AdminUser.create!(email: "thomas@thomascarney.org",
                  password: "asdfasdf",
                  password_confirmation: "asdfasdf",
                  first_name: "Thomas",
                  last_name: "Carney",
                  phone: "1638687560")

puts "1 user created"

AuditLog.create!(user_id: @employee.id, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, start_date: (Date.today - 1.weeks) - 6.days)
AuditLog.create!(user_id: @employee.id, start_date: (Date.today - 2.weeks) - 6.days)


puts "3 audit log have been created"

100.times do |post|

  Post.create!(date: Date.today, rationale: "#{post} Lorem ipsum dolor sit amet, no putent eligendi per, eam ipsum malorum an. No ius prima ubique postea, virtute constituam ea qui. Duo eu altera ponderum adipiscing, sed cu homero probatus. Id pri iudico legendos dignissim. Est an veniam tritani scripserit, pro clita virtute perpetua no.

Debet debitis scaevola eam id, cum id debet scripta, ut mollis electram quo. Vix omnium nostrum an, mandamus patrioque comprehensam mei ei. Quot iuvaret cum ut. Audire commune ea eam, modo purto utroque vim cu. Fastidii torquatos te mel.", user_id: @employee.id, overtime_request: 2.5)

end

puts "100 posts have been created"
