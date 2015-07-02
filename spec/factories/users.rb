FactoryGirl.define do
  factory :user do
    nome "admin"
    admin true
    email "admin2@admin.com"
    password "adminadmin"
    password_confirmation "adminadmin"
  end
end
