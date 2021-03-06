FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Some Rationale"
    user
    overtime_request 3.5
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    user
    overtime_request 0.5
  end

  factory :post_from_another_user, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    association :user, factory: [:non_authorized_user]
    overtime_request 2.5
  end

end
