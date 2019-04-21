require 'rails_helper'

feature 'achievement page' do
  scenario 'achievement public page' do
    achievement = FactoryBot.create(:achievement, title: 'just did it')
    visit("/achievements/#{achievement.id}")
    
    expect(page).to have_content('just did it')
  end

  scenario 'render markdown description' do
    achievement = FactoryBot.create(:achievement, description: 'that *was* hard')
    visit("/achievements/#{achievement.id}")
    
    expect(page).to have_css('em', text: 'was')
  end
end
