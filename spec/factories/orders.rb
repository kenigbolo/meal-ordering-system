FactoryGirl.define do
  factory :order do
    restaurant "MyString"
    meal_order []
    status "Active"
  end
end
