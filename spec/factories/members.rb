FactoryBot.define do
  factory :member do
    sequence(:bio) { |i| "person-bio-#{i}" }
  end

end
