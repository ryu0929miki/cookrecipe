FactoryBot.define do
  factory :recipe do
    title    {Faker::Lorem.sentence}
    material {Faker::Lorem.sentence}
    make     {Faker::Lorem.sentence}
    image    {Faker::Lorem.sentence}
    association :user
    after(:build) do |recipe|
      recipe.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.jpg')
    end
  end
end
