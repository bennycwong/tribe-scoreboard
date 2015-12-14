FactoryGirl.define do  factory :goal do
    user ""
type ""
active false
description "MyString"
  end
  factory :type do
    name "MyString"
points 1
  end
  factory :score do
    goal "MyString"
date "2015-12-12"
accomplished false
type_id 1
user_id 1
  end

end
