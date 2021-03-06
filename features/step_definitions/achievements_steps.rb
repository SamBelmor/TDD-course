Given("I am a guest user") do
end

Given("there is a public achievement") do
  @achievement = FactoryBot.create(:public_achievement, title: 'i did it')
end

When("I go to the achievement's Page") do
  visit(achievement_path(@achievement.id))
end

Then("I must see achievement's content") do
  expect(page).to have_content('i did it')
end
