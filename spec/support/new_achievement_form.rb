class NewAchievementForm
  include Capybara::DSL

  def visit_page
    visit('/')
    click_on('new achievement')
    self
  end

  def fill_in_with(params = {})
    fill_in('title', with: params.fetch(:title, 'read a book'))
    fill_in('description', with: 'excellent read')
    select('public', from: 'privacy')
    check('features achievement')
    attach_file('cover image', "#{Rails.root}/spec/fixtures/cover_image.png")
    self
  end

  def submit
    click_on('create achievement')
    self
  end
end
